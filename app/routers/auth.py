from fastapi import APIRouter, HTTPException, Depends
import httpx
from ..services.auth import signup, login, recover_password
from ..schemas.user import UserRequest, UserLogin
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
    
@router.get("/me")
def getCurrentUser(user = Depends(get_current_user)):

    return user


@router.post("/get-token")
async def get_token(user: UserLogin):
    url = f"https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBAviu-38dW9SF4U9UmVORslfWnr5hI_uQ"
    payload = {
        "email": user.email,
        "password": user.password,
        "returnSecureToken": True
    }
    
    async with httpx.AsyncClient() as client:
        response = await client.post(url, json=payload)
    
    if response.status_code != 200:
        raise HTTPException(status_code=response.status_code, detail=f"Error en login: {response.text}")
    
    data = response.json()
    id_token = data.get("idToken")
    
    if not id_token:
        raise HTTPException(status_code=400, detail="No se pudo obtener el idToken")
    
    return {"idToken": id_token}


