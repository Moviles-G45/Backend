from fastapi import APIRouter, Depends, HTTPException
from tortoise.expressions import Q
from ..models import Transaction, User, Category
from ..auth.dependencies import get_current_user
from ..schemas.transaction import TransactionCreate, TransactionResponse
from typing import List
from datetime import date

async def get_expenses(start_date: str = None, end_date: str = None, category: str = None, limit: int = 10, offset: int = 0,
                       user: dict = Depends(get_current_user)):
    filters = Q(date__gte=start_date, date__lte=end_date, user_id=user["user_id"])

    if category:
        category_obj = await Category.get_or_none(name=category)
        if not category_obj:
            raise HTTPException(status_code=404, detail="Category not found")
        filters &= Q(category=category_obj)

    transactions = await Transaction.filter(filters).offset(offset).limit(limit)
    return transactions

async def create_expense(transaction: TransactionCreate, user: dict = Depends(get_current_user)):
    category = await Category.get_or_none(name=transaction.category_id)
    
    if not category:
        raise HTTPException(status_code=404, detail="Category not found")

    new_transaction = await Transaction.create(
        date=transaction.date,
        amount=transaction.amount,
        description=transaction.description,
        user_id=user["user_id"],
        category=category
    )

    return new_transaction

async def get_total_spent(user: dict = Depends(get_current_user)):
    total = await Transaction.filter(user_id=user["user_id"]).sum("amount")
    return {"user": user["email"], "total_spent": total}