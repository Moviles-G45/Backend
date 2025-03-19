from pydantic import BaseModel
from tortoise.contrib.pydantic import pydantic_model_creator
from ..models.category import Category


CategoryPydantic = pydantic_model_creator(Category, name="Category")


class CategoryCreate(BaseModel):
    name: str
    description: str
    category_type_id: int