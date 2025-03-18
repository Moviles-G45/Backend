from fastapi import APIRouter, HTTPException, Depends
from ..services.auth import signup, login, recover_password
from ..schemas.user import UserRequest
from ..auth.dependencies import get_current_user


router = APIRouter(prefix="/auth", tags=["Authentication"])

@router.post("/signup")
async def signup_route(user: UserRequest):
    """Ruta para registrar un usuario."""
    try:
        return await signup(user)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))

@router.post("/login")
def login_route(email: str, password: str):
    """Ruta para iniciar sesión."""
    try:
        return login(email, password)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))

@router.post("/recover")
def recover_password_route(email: str):
    """Ruta para recuperar contraseña."""
    try:
        return recover_password(email)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))
    
@router.get("/me")
def getCurrentUser(user = Depends(get_current_user)):

    return user


