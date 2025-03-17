from fastapi import APIRouter

from ..schemas.category import CategoryPydantic, CategoryCreate
from ..services.category import get_categories, create_category

router = APIRouter(prefix="/categories", tags=["Categories"])

@router.get("", response_model=list[CategoryPydantic])
async def list_categories():
    """Get all categories for the current user."""
    return await get_categories()

@router.post("", response_model=CategoryPydantic)
async def add_category(category: CategoryCreate):
    """Create a new category."""
    return await create_category(category)
