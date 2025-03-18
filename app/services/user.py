from ..models.user import User
from ..schemas.user import UserPydantic

async def getUserByEmail(email: str):

    user = await  User.get_or_none(email = email)
    return await UserPydantic.from_tortoise_orm(user)