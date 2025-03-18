import firebase_admin
from firebase_admin import auth, credentials

# Inicializar Firebase Admin SDK si aún no está inicializado
if not firebase_admin._apps:
    cred = credentials.Certificate("firebase_config.json")  # Archivo JSON de credenciales de Firebase
    firebase_admin.initialize_app(cred)

def decode_token(token: str):
    """Decodifica y verifica el token de Firebase."""
    try:
        decoded_token = auth.verify_id_token(token)  # Verifica el ID token de Firebase
        return decoded_token  # Retorna toda la información del usuario
    except Exception as e:
        print(f"Error decoding token: {e}")
        return None
