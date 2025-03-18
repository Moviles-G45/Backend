
from fastapi import Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer
from ..auth.firebase import verify_firebase_token
from ..services.user import getUserByEmail

oauth2_scheme = OAuth2PasswordBearer(tokenUrl="/login")

def get_current_user(token: str = Depends(oauth2_scheme)):
    """Verifica el token de Firebase y obtiene el usuario autenticado."""
    try:
        decoded_token = verify_firebase_token(token)
        user_id = decoded_token.get("uid")
        if not user_id:
            raise HTTPException(
                status_code=status.HTTP_401_UNAUTHORIZED,
                detail="Invalid Firebase token",
            )
        email = decoded_token.get("email")
        user = getUserByEmail(email)
        return user # Retorna datos del usuario
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail=f"Authentication failed: {str(e)}",
        )
