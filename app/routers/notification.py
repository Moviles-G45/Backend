import os
from fastapi import APIRouter, Depends,HTTPException
import httpx
from pydantic import BaseModel
import smtplib
from email.mime.text import MIMEText

from app.auth.dependencies import get_current_user
from app.helpers.mail import send_email
from app.models.user import User

from ..schemas.notification import NotificationPydantic, NotificationCreate
from ..services.notification import get_notifications, create_notification

router = APIRouter(prefix="/notifications", tags=["Notifications"])

@router.get("", response_model=list[NotificationPydantic])
async def list_notifications():
    """Get all notifications for the current user."""
    return await get_notifications()

@router.post("", response_model=NotificationPydantic)
async def add_notification(
    notification: NotificationCreate,
    current_user: User = Depends(get_current_user)
):
    notification_data = notification.model_dump(exclude_unset=True)
    notification_data["user_id"] = current_user.id
    return await create_notification(notification_data)

    
class EmailRequest(BaseModel):
    to: str
    subject: str
    message: str
    

@router.post("/send-email")
async def send_reminder_email(payload: EmailRequest):
    try:
        send_email(
            to_email=payload.to,
            subject=payload.subject,
            body=payload.message
        )
        return {"message": "Correo enviado correctamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))