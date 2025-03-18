
from tortoise.transactions import in_transaction
from app.models.category import Category
from app.models.transaction import Transaction
from typing import List, Dict

from datetime import date, timedelta

async def get_transactions_in_month(user_id: int, month: int, year: int):
    """ Obtiene las transacciones de un usuario en un mes específico. """
    
    # Fecha de inicio: Primer día del mes
    start_date = date(year, month, 1)
    
    # Fecha de fin: Primer día del siguiente mes
    if month == 12:
        end_date = date(year + 1, 1, 1)
    else:
        end_date = date(year, month + 1, 1)

    print(f"Filtrando transacciones desde {start_date} hasta {end_date}")

    transactions = await Transaction.filter(
        user_id=user_id,
        date__range=(start_date, end_date)  # Filtrar entre el 1 del mes y el 1 del mes siguiente
    ).values("category_id", "amount", "date")

    return transactions



CATEGORIES = ["earnings", "savings", "needs", "wants"]



async def get_budget(user_id: int, month: int, year: int):
    # Obtener categorías del usuario en el mes/año especificado
    categories = await Category.filter(user_id=user_id, month=month, year=year).values(
        "id", "name", "amount", "percentage", "month", "year", "user_id"
    )

    if not categories:
        return {"error": "No hay presupuesto registrado para este usuario en el mes y año indicados"}

    earnings = next((c["amount"] for c in categories if c["name"] == "earnings"), None)
    if earnings is None:
        return {"error": "No hay earnings definidos para este usuario."}

    # Asegurar que earnings sea float
    earnings = float(earnings) if earnings is not None else 0.0

    # Construir la respuesta con los montos de cada categoría
    result = []
    for c in categories:
        if c["name"] == "earnings":
            result.append({"category": "earnings", "amount": earnings})
        else:
            # Asegurar que percentage sea float
            percentage = float(c["percentage"]) if c["percentage"] is not None else 0.0
            result.append({"category": c["name"], "amount": earnings * (percentage / 100)})

    return result


async def set_budget(user_id: int, month: int, year: int, earnings: float, savings_percentage: float, needs_percentage: float, wants_percentage: float):
    """ Crea el presupuesto de un usuario para un mes y año específico. """
    
    # Validar que los porcentajes sumen 100%
    if savings_percentage + needs_percentage + wants_percentage != 100:
        raise ValueError("Los porcentajes de savings, needs y wants deben sumar 100%.")

    async with in_transaction():
        categories = [
            Category(user_id=user_id, name="earnings", amount=earnings, month=month, year=year),
            Category(user_id=user_id, name="savings", percentage=savings_percentage, month=month, year=year),
            Category(user_id=user_id, name="needs", percentage=needs_percentage, month=month, year=year),
            Category(user_id=user_id, name="wants", percentage=wants_percentage, month=month, year=year),
        ]
        await Category.bulk_create(categories)

    return {"message": "Presupuesto creado correctamente"}

async def get_exceedances(user_id: int, month: int, year: int) -> Dict[str, float]:
    """ Obtiene las categorías donde el usuario se ha excedido en su presupuesto. """
    
    # Obtener categorías del usuario en el mes/año especificado
    categories = await Category.filter(user_id=user_id, month=month, year=year).values(
        "id", "name", "amount", "percentage", "month", "year", "user_id"
    )

    if not categories:
        return {"error": "No hay presupuesto registrado para este usuario en el mes y año indicados"}

    earnings = next((c["amount"] for c in categories if c["name"] == "earnings"), None)
    if earnings is None:
        return {"error": "No hay earnings definidos para este usuario."}

    # Asegurar que earnings sea float
    earnings = float(earnings) if earnings is not None else 0.0
    budget_limits = {}
    for c in categories:
        if c["name"] != "earnings":
            percentage = (c["percentage"]) if c["percentage"] is not None else 0.0
            a = c["name"]
            b = earnings * percentage / 100
            budget_limits[a] = b

    category_ids = [c["id"] for c in categories if c["name"] in ["savings", "needs", "wants"]]

    if not category_ids:
        return {"error": "No hay categorías de savings, needs o wants definidas para este usuario."}
    # Obtener gastos del usuario en el mes, revisando el ID de la categoría
    transactions = await get_transactions_in_month(user_id, month, year)
    if not transactions:
        return {"error": "No hay transacciones registradas para este usuario en el mes y año indicados"}

     # Sumar gastos por categoría
    expenses = {}
    for t in transactions:
        category_id = t["category_id"]
        amount = float(t["amount"])

        # Obtener el nombre de la categoría correspondiente
        category_name = next((c["name"] for c in categories if c["id"] == category_id), None)
        if category_name:
            expenses[category_name] = expenses.get(category_name, 0) + amount

    # Comparar gastos con los límites
    exceedances = {cat: spent for cat, spent in expenses.items() if cat in budget_limits and spent > budget_limits[cat]}

    return exceedances