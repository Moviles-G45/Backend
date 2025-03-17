from pydantic import BaseModel
from typing import Optional
from tortoise.contrib.pydantic import pydantic_model_creator
from app.models.category import Category

CategoryPydantic = pydantic_model_creator(Category, name="Category")
CategoryPydanticIn = pydantic_model_creator(Category, name="CategoryIn", exclude_readonly=True)

class CategoryCreate(BaseModel):
    name: str
    monthly_budget: Optional[float] = None
    user_id: int
