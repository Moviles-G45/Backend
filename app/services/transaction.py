from datetime import datetime
from fastapi import HTTPException
from tortoise.expressions import Q
from tortoise.functions import Sum

from ..models.category_type import CategoryType
from ..models import Transaction, User, Category
from ..schemas.transaction import TransactionCreate, TransactionRequest, TransactionPydantic


async def get_transactions(
    user: User,
    start_date: str = None,
    end_date: str = None,
    category: str = None,
    category_type: str = None,
    limit: int = 10,
    offset: int = 0
):
    filters = Q(user_id=user.id)

    if start_date:
        try:
            start_date_obj = datetime.fromisoformat(start_date)
        except ValueError:
            raise HTTPException(
                status_code=400,
                detail="Formato de start_date inválido. Debe seguir el formato ISO 8601."
            )
        filters &= Q(date__gte=start_date_obj)

    if end_date:
        try:
            end_date_obj = datetime.fromisoformat(end_date)
        except ValueError:
            raise HTTPException(
                status_code=400,
                detail="Formato de end_date inválido. Debe seguir el formato ISO 8601."
            )
        filters &= Q(date__lte=end_date_obj)

    if category:
        category_obj = await Category.get_or_none(id=category)
        if not category_obj:
            raise HTTPException(status_code=404, detail="Category not found")
        filters &= Q(category=category_obj)

    if category_type:
        category_type_obj = await CategoryType.get_or_none(id=category_type)
        if not category_type_obj:
            raise HTTPException(status_code=404, detail="CategoryType not found")
        filters &= Q(category__category_type=category_type_obj)

    transactions = Transaction.filter(filters) \
                                .order_by('-date') \
                                .offset(offset) \
                                .limit(limit)

    return await TransactionPydantic.from_queryset(transactions)



async def create_transaction(transaction: TransactionRequest, user: User):
    category = await Category.get_or_none(id=transaction.category_id)

    if not category:
        raise HTTPException(status_code=404, detail="Category not found")

    transaction_obj = TransactionCreate(**transaction.model_dump(), user_id=user.id)

    new_transaction = await Transaction.create(**transaction_obj.model_dump(exclude_unset=True))

    return await TransactionPydantic.from_tortoise_orm(new_transaction)


async def get_total_spent(user: User):
    """
    Calcula el total de gastos del usuario en el mes actual.
    """
    today = datetime.today()
    year, month = today.year, today.month

    start_date = datetime(year, month, 1)
    end_date = datetime(year, month + 1, 1) if month < 12 else datetime(year + 1, 1, 1)

    result = await Transaction.filter(
        user_id=user.id,
        date__gte=start_date,
        date__lt=end_date
    ).annotate(total=Sum('amount')).values('total')

    total_spent = float(result[0]['total']) if result and result[0]['total'] else 0.0  # 🔹 Convertir a float

    return {
        "year": year,
        "month": month,
        "total_spent": total_spent
    }


async def get_monthly_balance(user: User, year: int, month: int):
    """
    Calcula el balance general de un mes sumando earnings y restando expenses.
    Adicionalmente, retorna cuánto se gastó en needs (2), wants (3) y savings (4).
    Usamos una sola consulta y distribuimos los totales en Python.
    """
    try:
        start_date = datetime(year, month, 1)
        end_date = datetime(year, month + 1, 1) if month < 12 else datetime(year + 1, 1, 1)
    except ValueError:
        raise HTTPException(status_code=400, detail="Fecha inválida")

    grouped_data = await Transaction.filter(
        user_id=user.id,
        date__gte=start_date,
        date__lt=end_date
    ).annotate(total=Sum('amount')) \
     .group_by('category__category_type_id') \
     .values('category__category_type_id', 'total')

    total_earnings = 0
    total_needs = 0
    total_wants = 0
    total_savings = 0

    for row in (grouped_data or []):
        cat_type = row['category__category_type_id']
        amount = row['total'] or 0

        if cat_type == 1:
            total_earnings += amount
        elif cat_type == 2:
            total_needs += amount
        elif cat_type == 3:
            total_wants += amount
        elif cat_type == 4:
            total_savings += amount

    total_expenses = total_needs + total_wants + total_savings

    balance = total_earnings - total_expenses

    return {
        "user": user.email,
        "year": year,
        "month": month,
        "total_earnings": total_earnings,
        "total_expenses": total_expenses,
        "balance": balance,
        "needs_spent": total_needs,
        "wants_spent": total_wants,
        "savings_spent": total_savings
    }