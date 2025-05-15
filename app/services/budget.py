from datetime import datetime
from tortoise.transactions import in_transaction
from ..models.user import User
from ..models.budget import Budget
from ..models.budget_category_type import BudgetCategoryType
from ..models.category_type import CategoryType
from ..schemas.budget import BudgetCreate
from ..services.transaction import get_transactions

import calendar


async def get_budget(user_id: int, month: int, year: int):
    # Se obtiene el presupuesto del usuario para el mes y año indicados
    budget = await Budget.get_or_none(user_id=user_id, month=month, year=year)
    if not budget:
        # Si no existe presupuesto, retornamos None y el router decidirá la acción correspondiente
        return None

    # Pre-cargamos la relación con BudgetCategoryType y dentro de ella la relación con CategoryType
    await budget.fetch_related("category_types__category_type")

    result = []
    # Iteramos sobre cada BudgetCategoryType asociado al presupuesto
    for budget_category in budget.category_types:
        # Excluimos el CategoryType con id igual a 1
        if budget_category.category_type.id != 1:
            result.append({
                "category_type": budget_category.category_type.name,
                "percentage": budget_category.percentage
            })
    return result


async def set_budget(user: User, budget_create: BudgetCreate) -> dict:
    """
    Crea un presupuesto para el usuario dado en el mes y año especificados.
    """

    # Validar que la suma de porcentajes sea 100
    total_percentage = sum(item.percentage for item in budget_create.budget_category_types)
    if total_percentage != 100:
        return {
            "success": False,
            "error": "La suma de los porcentajes debe ser exactamente 100. Actualmente es: " + str(total_percentage)
        }

    # Verificar que no exista ya un presupuesto para este usuario, mes y año
    existing_budget = await Budget.get_or_none(user_id=user.id, month=budget_create.month, year=budget_create.year)
    if existing_budget:
        return {
            "success": False,
            "error": f"Ya existe un presupuesto para {user.id}"
        }

    async with in_transaction():
        budget = await Budget.create(user_id=user.id, month=budget_create.month, year=budget_create.year)
        budget_categories_summary = []

        for item in budget_create.budget_category_types:
            category_type_id = item.category_type
            percentage = item.percentage

            category_type = await CategoryType.get_or_none(id=category_type_id)
            if not category_type:
                return {
                    "success": False,
                    "error": f"CategoryType con id {category_type_id} no encontrado"
                }

            if category_type.id == 1:
                return {
                    "success": False,
                    "error": "No se permite incluir el CategoryType 'earnings' (id=1)"
                }

            await BudgetCategoryType.create(
                budget=budget,
                category_type=category_type,
                percentage=percentage
            )

            budget_categories_summary.append({
                "category": category_type.name,
                "percentage": percentage
            })

    return {
        "success": True,
        "budget_id": budget.id,
        "month": budget.month,
        "year": budget.year,
        "category_types": budget_categories_summary
    }


async def update_budget(user: User, budget_create: BudgetCreate) -> dict:
    """
    Edita el presupuesto del mes actual para el usuario dado.
    """

    # Validar que la suma de porcentajes sea 100
    total_percentage = sum(item.percentage for item in budget_create.budget_category_types)
    if total_percentage != 100:
        return {
            "success": False,
            "error": f"La suma de los porcentajes debe ser exactamente 100. Actualmente es: {total_percentage}"
        }

    # Verificar si ya existe un presupuesto para este usuario, mes y año
    existing_budget = await Budget.get_or_none(
        user_id=user.id, 
        month=budget_create.month, 
        year=budget_create.year
    )

    if not existing_budget:
        return {
            "success": False,
            "error": f"No existe un presupuesto para {budget_create.month}/{budget_create.year} del usuario {user.id}"
        }

    async with in_transaction():
        try:
            # Actualizar el presupuesto existente
            budget_categories_summary = []

            # Eliminar categorías previas del presupuesto
            await BudgetCategoryType.filter(budget=existing_budget).delete()

            # Crear nuevas categorías en el presupuesto actualizado
            for item in budget_create.budget_category_types:
                category_type_id = item.category_type
                percentage = item.percentage

                category_type = await CategoryType.get_or_none(id=category_type_id)
                if not category_type:
                    return {
                        "success": False,
                        "error": f"CategoryType con id {category_type_id} no encontrado"
                    }

                if category_type.id == 1:
                    return {
                        "success": False,
                        "error": "No se permite incluir el CategoryType 'earnings' (id=1)"
                    }

                await BudgetCategoryType.create(
                    budget=existing_budget,
                    category_type=category_type,
                    percentage=percentage
                )

                budget_categories_summary.append({
                    "category": category_type.name,
                    "percentage": percentage
                })

            return {
                "success": True,
                "message": "Presupuesto actualizado exitosamente",
                "budget_id": existing_budget.id,
                "month": existing_budget.month,
                "year": existing_budget.year,
                "category_types": budget_categories_summary
            }
        except Exception as e:
            return {
                "success": False,
                "error": f"Error al actualizar el presupuesto: {str(e)}"
            }

async def get_exceedances(user: User, month: int, year: int):
    """
    Calcula las excedencias de gasto para cada CategoryType (excepto ingresos) en el presupuesto del mes y año indicados.
    
    Retorna una lista de diccionarios con el formato:
      [
        {
          "category_type": <nombre del CategoryType>,
          "max": <valor máximo permitido>,
          "actual": <valor total de transacciones>
        },
        ...
      ]
      
    Se hace lo siguiente:
      - Se determina el rango de fechas para el mes.
      - Se obtienen las transacciones de ingresos (CategoryType id = 1) para calcular el total de ingresos.
      - Se obtiene el presupuesto (Budget) del usuario para el mes y año indicados, junto con sus asignaciones (BudgetCategoryType).
      - Para cada asignación se usa `get_transactions` para obtener las transacciones de ese CategoryType en el mes y se suma el monto.
      - Se calcula el máximo permitido como: total_income * (percentage / 100)
    """
    # Calcular fechas de inicio y fin del mes
    start_date_obj = datetime(year, month, 1)
    last_day = calendar.monthrange(year, month)[1]
    end_date_obj = datetime(year, month, last_day, 23, 59, 59)

    # Obtener los ingresos del mes (CategoryType id = 1)
    earnings_transactions = await get_transactions(
        user=user,
        start_date=start_date_obj.isoformat(),
        end_date=end_date_obj.isoformat(),
        category_type=1,  # Ingresos
        limit=10000,
        offset=0
    )
    total_income = sum(tx.amount for tx in earnings_transactions)

    # Obtener el presupuesto del usuario para el mes y año indicados
    budget = await Budget.get_or_none(user_id=user.id, month=month, year=year)
    if not budget:
        return []  # O bien, retornar None según la lógica de la aplicación

    # Pre-cargar la relación BudgetCategoryType y dentro de ella, CategoryType
    await budget.fetch_related("category_types__category_type")

    exceedances = []
    for bc in budget.category_types:
        # Calcular el valor máximo permitido para este CategoryType
        allowed = float(total_income) * (bc.percentage / 100)
        # Usar get_transactions para obtener todas las transacciones de este CategoryType en el mes
        transactions = await get_transactions(
            user=user,
            start_date=start_date_obj.isoformat(),
            end_date=end_date_obj.isoformat(),
            category_type=bc.category_type.id,
            limit=10000,
            offset=0
        )
        # Sumar los montos de las transacciones obtenidas
        actual = sum(tx.amount for tx in transactions)
        exceedances.append({
            "category_type": bc.category_type.name,
            "max": allowed,
            "actual": actual
        })

    return exceedances
