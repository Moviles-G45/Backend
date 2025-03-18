from pydantic import BaseModel, EmailStr
from datetime import datetime
from tortoise.contrib.pydantic import pydantic_model_creator
from ..models.user import User

UserPydantic = pydantic_model_creator(User,name="User")
class UserRequest(BaseModel):
    full_name: str
    email: EmailStr
    password: str
    date_of_birth: datetime
    phone_number: int

class UserCreate(BaseModel):
    full_name: str
    email: EmailStr
    date_of_birth: datetime
    phone_number: int

class UserLogin(BaseModel):
    token: str

class UserClassicLogin(BaseModel):
    email: EmailStr
    password: str