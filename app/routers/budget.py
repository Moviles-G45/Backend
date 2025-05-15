from fastapi import APIRouter, HTTPException, Depends

from app.schemas.budget import BudgetCreate, BudgetRequest

from ..auth.dependencies import get_current_user
from ..models.user import User
from ..services.budget import get_budget, set_budget, get_exceedances, update_budget


router = APIRouter(prefix="/budget", tags=["Budget"])


@router.get("/{month}/{year}")
async def get_budget_endpoint(month: int, year: int, user: User = Depends(get_current_user)):
    """Endpoint para obtener presupuesto."""
    try:
        return await get_budget(user.id, month, year)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))


@router.post("/")
async def create_budget_endpoint(
    budget: BudgetRequest,
    current_user: User = Depends(get_current_user)
):
    budget = BudgetCreate(**budget.model_dump(), user_id=current_user.id)
    result = await set_budget(current_user, budget)

    if not result.get("success", False):
        raise HTTPException(status_code=400, detail=result.get("error", "Error desconocido al crear el presupuesto"))

    return result

@router.put("/")
async def update_budget_endpoint(
    budget: BudgetRequest,
    current_user: User = Depends(get_current_user)
):
    """
    Editar el presupuesto del mes actual para el usuario autenticado.
    """
    budget = BudgetCreate(**budget.model_dump(), user_id=current_user.id)
    result = await update_budget(current_user, budget)

    if not result.get("success", False):
        raise HTTPException(status_code=400, detail=result.get("error", "Error desconocido al editar el presupuesto"))

    return result



@router.get("/exceedances/{month}/{year}")
async def get_exceedances_endpoint(month: int, year: int, user: User = Depends(get_current_user)):
    """Endpoint para obtener las categorías en las que se ha excedido."""
    try:
        return {"exceedances": await get_exceedances(user, month, year)}
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))