from fastapi import APIRouter, Query, Depends
from ..auth.dependencies import get_current_user
from typing import Optional

from ..schemas.transaction import TransactionRequest, TransactionPydantic
from ..services.transaction import get_monthly_balance, get_transactions, create_transaction, get_total_spent
from ..models.user import User

router = APIRouter(prefix="/transactions", tags=["transactions"])

@router.get("", response_model=list[TransactionPydantic])
async def list_transactions(
    startDate: Optional[str] = Query(None),
    endDate: Optional[str] = Query(None),
    category: Optional[str] = Query(None),
    user: User = Depends(get_current_user)
):
    """Get transactions filtered by optional date range or category."""
    return await get_transactions(start_date=startDate, end_date=endDate, category=category, user=user)

@router.post("", response_model=TransactionPydantic)
async def tadd_transaction(transaction: TransactionRequest, user: User = Depends(get_current_user)):
    """Create a new transaction."""
    return await create_transaction(transaction=transaction, user=user)


@router.get("/total_spent")
async def total_spent(user: User = Depends(get_current_user)):
    """Return the total spent by the user (maybe over a period)."""
    return await get_total_spent(user=user)


@router.get("/balance")
async def monthly_balance( user: User = Depends(get_current_user)):
    """Devuelve el balance general de un mes."""
    return await get_monthly_balance(user=user)
