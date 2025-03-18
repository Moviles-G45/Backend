from fastapi import APIRouter, HTTPException
from tortoise.transactions import in_transaction
from ..services.budget import get_budget, set_budget, get_exceedances
from pydantic import BaseModel
from app.models.category import Category
from typing import List, Dict
from app.models.transaction import Transaction





router = APIRouter(prefix="/budget", tags=["Budget"])


class BudgetCreateRequest(BaseModel):
    user_id: int
    month: int
    year: int
    earnings: float
    savings_percentage: float
    needs_percentage: float
    wants_percentage: float


class BudgetResponse(BaseModel):
    category: str
    amount: float

@router.get("/{user_id}/{month}/{year}", response_model=List[BudgetResponse])
async def get_budget_endpoint(user_id: int, month: int, year: int):
    """Endpoint para obtener presupuesto."""
    try:
        return await get_budget(user_id, month, year)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))
   

@router.post("/")
async def create_budget_endpoint(data: BudgetCreateRequest):
    """Endpoint para crear presupuesto."""
    try:
        return await set_budget(
            user_id=data.user_id, 
            month=data.month, 
            year=data.year, 
            earnings=data.earnings, 
            savings_percentage=data.savings_percentage, 
            needs_percentage=data.needs_percentage, 
            wants_percentage=data.wants_percentage
        )
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))

     

@router.get("/exceedances/{user_id}/{month}/{year}")
async def get_exceedances_endpoint(user_id: int, month: int, year: int):
    """Endpoint para obtener las categorías en las que se ha excedido."""
    try:
        return {"exceedances": await get_exceedances(user_id, month, year)}
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))