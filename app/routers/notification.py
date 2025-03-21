import os
from fastapi import APIRouter,HTTPException
import httpx
from pydantic import BaseModel
import smtplib
from email.mime.text import MIMEText

from app.helpers.mail import send_email

from ..schemas.notification import NotificationPydantic, NotificationCreate
from ..services.notification import get_notifications, create_notification

router = APIRouter(prefix="/notifications", tags=["Notifications"])

@router.get("", response_model=list[NotificationPydantic])
async def list_notifications():
    """Get all notifications for the current user."""
    return await get_notifications()

@router.post("", response_model=NotificationPydantic)
async def add_notification(notification: NotificationCreate):
    """Create a new notification (manual or system-driven)."""
    return await create_notification(notification)


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