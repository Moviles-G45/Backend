from fastapi import APIRouter, Query
from typing import Optional
from ..services.report import send_monthly_report_pdf
from fastapi import APIRouter, Query, Depends
from ..auth.dependencies import get_current_user
router = APIRouter(prefix="/reports", tags=["Reports"])

@router.get("/monthly")
async def monthly_report(
    month: Optional[str] = Query(None), 
    year: Optional[str] = Query(None), 
    user = Depends(get_current_user)
):
    """
    Retorna un reporte financiero mensual basado en user_id, 
    incluyendo tendencias de gasto, desempeño del presupuesto y desglose por categoría.
    """
    return await send_monthly_report_pdf(month, year, user.id, user.email)