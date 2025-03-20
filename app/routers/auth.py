from fastapi import APIRouter, HTTPException
from ..services.auth import signup, login, recover_password
from ..schemas.user import UserRequest, UserLogin


router = APIRouter(prefix="/auth", tags=["Authentication"])

@router.post("/signup")
async def signup_route(user: UserRequest):
    """Ruta para registrar un usuario."""
    try:
        return await signup(user)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))

@router.post("/login")
async def login_route(user: UserLogin):
    """Ruta para iniciar sesión."""
    try:
        return await login(user)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))

@router.post("/recover")
def recover_password_route(email: str):
    """Ruta para recuperar contraseña."""
    try:
        return recover_password(email)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))

