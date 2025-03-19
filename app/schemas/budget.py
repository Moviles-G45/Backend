
from pydantic import BaseModel

class BudgetCategoryTypeRequest(BaseModel):
    category_type: int
    percentage: float

class BudgetRequest(BaseModel):
    month: int
    year: int
    budget_category_types: list[BudgetCategoryTypeRequest]

class BudgetCreate(BudgetRequest):
    user_id: int

