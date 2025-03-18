import calendar
from datetime import date
from typing import Optional
from fastapi import Depends, HTTPException
from tortoise.expressions import Q

from app.auth.dependencies import get_current_user
from fastapi import APIRouter, Query, Depends

from app.models.transaction import Transaction
from ..auth.dependencies import get_current_user


async def get_monthly_report(month: str, year: str):
    # Convertimos a enteros
    year, month = int(year), int(month)

    # Obtener el último día del mes correctamente
    last_day = calendar.monthrange(year, month)[1]

    start_date = date(year, month, 1)
    end_date = date(year, month, last_day)
    # Buscar transacciones del usuario en ese mes
    transactions = await Transaction.filter(
        date__range=(start_date, end_date)
    ).all()


    if not transactions:
        raise HTTPException(status_code=404, detail=f"No hay reporte en {month}/{year}")




    total_amount = sum(t.amount for t in transactions)
    category_summary = {}

    for t in transactions:
        category_name = t.category.name
        category_summary[category_name] = category_summary.get(category_name, 0) + t.amount

    report = {
        "total_transactions": len(transactions),
        "total_amount": total_amount,
        "categories": [
            {"name": k, "total_amount": v} for k, v in category_summary.items()
        ]
    }


    return report