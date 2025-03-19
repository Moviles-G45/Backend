import calendar
from datetime import date
import os
from fastapi import HTTPException
from tortoise.expressions import Q

from ..helpers.mail import send_email
from ..helpers.pdf import generate_pdf_report
from ..models.transaction import Transaction



async def get_monthly_report(month: str, year: str, user_id: int):
    year, month = int(year), int(month)
    last_day = calendar.monthrange(year, month)[1]

    start_date = date(year, month, 1)
    end_date = date(year, month, last_day)

    transactions = await Transaction.filter(
        Q(date__gte=start_date, date__lte=end_date) & Q(user_id=user_id)
    ).select_related("category")

    if not transactions:
        raise HTTPException(status_code=404, detail=f"No hay reporte en {month}/{year}")

    total_amount = sum(t.amount for t in transactions)
    return transactions, total_amount


async def send_monthly_report_pdf(month: str, year: str, user_id: int, user_email: str):
    """
    Genera el reporte mensual en PDF y lo envía por correo al usuario.
    Retorna un mensaje de confirmación.
    """
    transactions, total_amount = await get_monthly_report(month, year, user_id)

    pdf_filename = f"reporte_{user_id}_{year}_{month}.pdf"
    pdf_path = os.path.join("/tmp", pdf_filename)

    generate_pdf_report(transactions, total_amount, pdf_path)

    subject = f"Reporte de {month}/{year}"
    body = f"Hola,\n\nAdjunto encontrarás tu reporte del mes {month}/{year}.\n\nSaludos."
    send_email(user_email, subject, body, pdf_path)

    try:
        os.remove(pdf_path)
    except Exception as e:
        print(f"Error al eliminar el PDF temporal: {e}")

    return {"message": f"Reporte enviado a {user_email}"}