from pydantic import BaseModel
from typing import Optional

class CategoryBase(BaseModel):
    name: str  # earnings, savings, needs, wants
    month: int
    year: int

class CategoryCreate(CategoryBase):
    amount: Optional[float] = None  # Solo para earnings
    percentage: Optional[float] = None  # Solo para savings, needs, wants

class CategoryPydantic(CategoryBase):
    id: int
    amount: Optional[float] = None
    percentage: Optional[float] = None

    class Config:
        from_attributes = True  # ✅ Corrige el error de 'orm_mode'