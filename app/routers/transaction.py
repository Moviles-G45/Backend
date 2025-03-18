from fastapi import APIRouter, Query, Depends
from ..auth.dependencies import get_current_user
from typing import Optional

from ..schemas.transaction import TransactionCreate, TransactionPydantic
from ..services.transaction import get_expenses, create_expense, get_total_spent

router = APIRouter(prefix="/transactions", tags=["transactions"])

@router.get("", response_model=list[TransactionPydantic])
async def list_transactions(
    startDate: Optional[str] = Query(None),
    endDate: Optional[str] = Query(None),
    category: Optional[str] = Query(None)
):
    """Get transactions filtered by optional date range or category."""
    return await get_expenses(start_date=startDate, end_date=endDate, category=category)

@router.post("", response_model=TransactionPydantic)
async def add_transaction(transaction: TransactionCreate, user: dict = Depends(get_current_user)):
    """Create a new transaction."""
    return await create_expense(transaction=transaction, user=user)


@router.get("/total_spent")
async def total_spent(user: dict = Depends(get_current_user)):
    """Return the total spent by the user (maybe over a period)."""
    return await get_total_spent(user=user)