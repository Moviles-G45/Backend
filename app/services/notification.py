from app.models.notification import Notification
from app.schemas.notification import NotificationCreate, NotificationPydantic, NotificationPydanticIn



async def get_notifications():
    """Fetch user notifications from DB."""
    return await NotificationPydantic.from_queryset(Notification.all())

async def create_notification(notification: NotificationCreate):
    """Insert a new notification into DB."""
    notification_obj = await Notification.create(**notification.model_dump(exclude_unset=True))
    return await NotificationPydantic.from_tortoise_orm(notification_obj)
