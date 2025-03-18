from fastapi import APIRouter, Query
from typing import Optional
from ..services.report import get_monthly_report
from fastapi import APIRouter, Query, Depends
from ..auth.dependencies import get_current_user
router = APIRouter(prefix="/reports", tags=["Reports"])

@router.get("/monthly")
async def monthly_report(
    month: Optional[str] = Query(None), 
    year: Optional[str] = Query(None), 
    user_id: int = Query(...)
):
    """
    Retorna un reporte financiero mensual basado en user_id, 
    incluyendo tendencias de gasto, desempeño del presupuesto y desglose por categoría.
    """
    return await get_monthly_report(month, year, user_id)