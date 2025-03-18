from fastapi import HTTPException
from firebase_admin import auth

def verify_firebase_token(token: str):
    """Verifica el token JWT de Firebase."""
    try:
        decoded_token = auth.verify_id_token(token)
        return decoded_token
    except Exception:
        raise HTTPException(status_code=401, detail="Invalid Firebase Token")
