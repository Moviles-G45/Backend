from fastapi import APIRouter, HTTPException, Depends
from app.auth.firebase import auth, verify_firebase_token

router = APIRouter(prefix="/auth", tags=["Authentication"])

@router.post("/signup")
def signup(email: str, password: str):
    """Registra un usuario en Firebase Authentication."""
    try:
        user = auth.create_user_with_email_and_password(email, password)
        return {"message": "User created", "user_id": user["localId"]}
    except Exception:
        raise HTTPException(status_code=400, detail="Signup failed")

@router.post("/login")
def login(email: str, password: str):
    """Inicia sesión en Firebase y devuelve un token."""
    try:
        user = auth.sign_in_with_email_and_password(email, password)
        return {"access_token": user["idToken"], "token_type": "bearer"}
    except Exception:
        raise HTTPException(status_code=400, detail="Login failed")

@router.post("/recover")
def recover_password(email: str):
    """Envía un email de recuperación de contraseña a través de Firebase."""
    try:
        auth.send_password_reset_email(email)
        return {"message": "Password reset email sent"}
    except Exception:
        raise HTTPException(status_code=400, detail="Failed to send password reset email")
    
@router.post("/reset")
def reset_password(email: str, new_password: str):
    """Reestablece la contraseña manualmente (Firebase normalmente lo maneja con el link enviado)."""
    try:
        user = auth.get_user_by_email(email)
        auth.update_user(user.uid, password=new_password)
        return {"message": "Password updated successfully"}
    except Exception:
        raise HTTPException(status_code=400, detail="Failed to reset password")

@router.post("/logout")
def logout():
    # Firebase no maneja sesiones en backend, pero en frontend puedes borrar el token
    return {"message": "User logged out (Client-side token should be removed)"}

@router.get("/me")
def get_current_user(token: str = Depends(verify_firebase_token)):
    """Obtiene la información del usuario autenticado."""
    return {"email": token["email"], "user_id": token["localId"]}
