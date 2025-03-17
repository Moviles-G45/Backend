from fastapi import APIRouter
from ..services.budget import get_budget, set_budget, get_exceedances

router = APIRouter(prefix="/budget", tags=["Budget"])

@router.get("")
async def fetch_budget():
    """Fetch user's budget info."""
    return await get_budget()

@router.post("")
async def create_budget():
    """Create or update user's budget."""
    return await set_budget()

@router.get("/exceedances")
async def budget_exceedances():
    """Return categories that have exceeded budget."""
    return await get_exceedances()
