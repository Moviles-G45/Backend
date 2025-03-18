from fastapi import APIRouter, Depends, HTTPException
from tortoise.expressions import Q
from ..models import Transaction, User, Category
from ..schemas.transaction import TransactionCreate, TransactionResponse
from typing import List
from datetime import date

async def get_expenses(start_date: str = None, end_date: str = None, category: str = None, limit: int = 10, offset: int = 0):
    filters = Q(date__gte= start_date, date__lte=end_date)
    if category:
        category_obj = await Category.get_or_none(name=category)
        if not category_obj:
            raise HTTPException(status_code=404, detail="Category not found")
        filters &= Q(category=category_obj)  # Filtrar por categoría encontrada

    transactions = await Transaction.filter(filters).offset(offset).limit(limit)
    return transactions

async def create_expense(transaction: TransactionCreate):
    user = await User.get_or_none(id=transaction.user_id)
    category = await Category.get_or_none(id=transaction.category_id)

    if not user or not category:
        raise HTTPException(status_code=404, detail="User or category not found")

    new_transaction = await Transaction.create(**transaction.dict())
    return new_transaction

async def get_total_spent():
    total = await Transaction.all().sum("amount")
    return {"total_spent": total}