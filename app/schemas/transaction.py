from pydantic import BaseModel
from datetime import datetime
from typing import Optional
from tortoise.contrib.pydantic import pydantic_model_creator
from ..models.transaction import Transaction

TransactionPydantic = pydantic_model_creator(Transaction, name="Transaction")
TransactionPydanticIn = pydantic_model_creator(Transaction, name="TransactionIn", exclude_readonly=True)

class TransactionCreate(BaseModel):
    date: datetime
    amount: float
    description: Optional[str] = None
    category_id: int
    user_id: int  # Relación con el usuario
