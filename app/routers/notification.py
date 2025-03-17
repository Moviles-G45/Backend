from fastapi import APIRouter

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

