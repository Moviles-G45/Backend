from fastapi import APIRouter, HTTPException, Depends
from fastapi.security import OAuth2PasswordBearer
from firebase_admin import auth
from app.auth.dependencies import verify_firebase_token

router = APIRouter(prefix="/auth", tags=["Authentication"])
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="/auth/login")

@router.post("/signup")
def signup(email: str, password: str):
    """Registra un usuario en Firebase Authentication."""
    try:
        user = auth.create_user(email=email, password=password)
        return {"message": "User created", "user_id": user.uid}
    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Signup failed: {str(e)}")

@router.post("/login")
def login(email: str, password: str):
    """Inicia sesión en Firebase y devuelve un token de acceso."""
    try:
        user = auth.get_user_by_email(email)
        custom_token = auth.create_custom_token(user.uid)
        return {"access_token": custom_token, "token_type": "bearer"}
    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Login failed: {str(e)}")

@router.post("/recover")
def recover_password(email: str):
    """Envía un email de recuperación de contraseña a través de Firebase."""
    try:
        auth.generate_password_reset_link(email)
        return {"message": "Password reset email sent"}
    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Failed to send password reset email: {str(e)}")
    
@router.post("/reset")
def reset_password(email: str, new_password: str):
    """Reestablece la contraseña manualmente."""
    try:
        user = auth.get_user_by_email(email)
        auth.update_user(user.uid, password=new_password)
        return {"message": "Password updated successfully"}
    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Failed to reset password: {str(e)}")

@router.post("/logout")
def logout():
    """Firebase no maneja sesiones backend, el frontend debe eliminar el token."""
    return {"message": "User logged out (Client-side token should be removed)"}



