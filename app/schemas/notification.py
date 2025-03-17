from pydantic import BaseModel
from datetime import datetime
from typing import Optional
from tortoise.contrib.pydantic import pydantic_model_creator
from app.models.notification import Notification

NotificationPydantic = pydantic_model_creator(Notification, name="Notification")
NotificationPydanticIn = pydantic_model_creator(Notification, name="NotificationIn", exclude_readonly=True)

class NotificationCreate(BaseModel):
    name: str
    content: str
    user_id: int
    date: datetime
