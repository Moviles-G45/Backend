
from firebase_admin import auth


def decode_token(token: str):
    """Decodifica y verifica el token de Firebase."""
    try:
        changeToken = token.idToken
        decoded_token = auth.verify_id_token(token)  # Verifica el ID token de Firebase
        return decoded_token  # Retorna toda la información del usuario
    except Exception as e:
        print(f"Error decoding token: {e}")
        return None
