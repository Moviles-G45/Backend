import firebase_admin
from firebase_admin import auth, credentials
from fastapi import Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer

# Inicializar Firebase Admin SDK si aún no está inicializado
if not firebase_admin._apps:
    cred = credentials.Certificate("firebase_config.json")  # Archivo de credenciales de Firebase
    firebase_admin.initialize_app(cred)

# OAuth2Bearer para recibir el token
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="auth/login")

def get_current_user(token: str = Depends(oauth2_scheme)):
    """Verifica el token de Firebase y obtiene el usuario autenticado."""
    try:
        decoded_token = auth.verify_id_token(token)  # Verifica el token de Firebase
        user_id = decoded_token.get("uid")
        if not user_id:
            raise HTTPException(
                status_code=status.HTTP_401_UNAUTHORIZED,
                detail="Invalid Firebase token",
            )
        return {"user_id": user_id, "email": decoded_token.get("email")}  # Retorna datos del usuario
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail=f"Authentication failed: {str(e)}",
        )
