from pydantic import BaseModel
from datetime import date
from typing import Optional
from tortoise.contrib.pydantic import pydantic_model_creator
from ..models.transaction import Transaction

TransactionPydantic = pydantic_model_creator(Transaction, name="Transaction")
TransactionPydanticIn = pydantic_model_creator(Transaction, name="TransactionIn", exclude_readonly=True)

class TransactionCreate(BaseModel):
    date: date
    amount: float
    description: Optional[str] = None
    category_id: int
    user_id: int  
    
class TransactionResponse(BaseModel):
    id: int
    date: date
    amount: float
    description: Optional[str]
    user_id: int
    category_id: int

    class Config:
        orm_mode = True
