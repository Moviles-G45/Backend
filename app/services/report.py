import calendar
from datetime import date
from fastapi import HTTPException
from tortoise.expressions import Q

from ..models.category import Category
from ..models.transaction import Transaction



async def get_monthly_report(month: str, year: str, user_id: int):
    year, month = int(year), int(month)
    last_day = calendar.monthrange(year, month)[1]

    start_date = date(year, month, 1)
    end_date = date(year, month, last_day)

    transactions = await Transaction.filter(
        Q(date__gte=start_date, date__lte=end_date) & Q(user_id=user_id)
    ).all()

    if not transactions:
        raise HTTPException(status_code=404, detail=f"No hay reporte en {month}/{year}")


    total_amount = sum(t.amount for t in transactions)

    category_map = {c.id: c.name for c in await Category.all()}


    category_summary = {}

    for t in transactions:
        category_name = category_map.get(t.category_id, "Desconocido")

        if category_name in category_summary:
            category_summary[category_name] += t.amount
        else:
            category_summary[category_name] = t.amount

    report = {
        "total_transactions": len(transactions),
        "total_amount": total_amount,
        "categories": [
            {"name": k, "total_amount": v} for k, v in category_summary.items()
        ]
    }

    return report
