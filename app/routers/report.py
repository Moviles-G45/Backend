from fastapi import APIRouter, Query
from typing import Optional
from ..services.report import get_monthly_report

router = APIRouter(prefix="/reports", tags=["Reports"])

@router.get("/monthly")
async def monthly_report(month: Optional[str] = Query(None), year: Optional[str] = Query(None)):
    """
    Return a monthly financial report for the user, including 
    spending trends, budget performance, category breakdown.
    """
    return await get_monthly_report(month, year)
