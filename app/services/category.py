from typing import Optional
from app.models.category import Category
from app.schemas.category import  CategoryBase, CategoryCreate, CategoryPydantic



async def get_categories():
    """Retrieve categories from DB."""
    return await CategoryPydantic.from_queryset(Category.all())

async def create_category(category: CategoryCreate):
    category_obj = await Category.create(**category.model_dump(exclude_unset=True))
    return await CategoryPydantic.from_tortoise_orm(category_obj)

class CategoryPydanticIn(CategoryBase):
    """Este modelo se usa cuando se necesita ingresar datos sin ID"""
    amount: Optional[float] = None
    percentage: Optional[float] = None