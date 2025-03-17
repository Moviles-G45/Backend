import json
import pyrebase
from fastapi import HTTPException

# Cargar configuración de Firebase
with open("firebase_config.json") as f:
    firebase_config = json.load(f)

firebase = pyrebase.initialize_app(firebase_config)
auth = firebase.auth()

def verify_firebase_token(token: str):
    """Verifica el token JWT de Firebase."""
    try:
        user_info = auth.get_account_info(token)
        return user_info['users'][0]  # Retorna los datos del usuario autenticado
    except Exception:
        raise HTTPException(status_code=401, detail="Invalid Firebase Token")
