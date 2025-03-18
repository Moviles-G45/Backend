from firebase_admin import auth
from ..helpers.mail import send_email
from ..schemas.user import UserRequest, UserCreate, UserLogin
from ..models.user import User

async def signup(user: UserRequest):
    """Registra un usuario en Firebase Authentication."""
    try:
        user_fb = auth.create_user(email=user.email, password=user.password)
        user_db = UserCreate(full_name=user.full_name,
                             email=user.email, date_of_birth=user.date_of_birth,
                             phone_number=user.phone_number)
        await User.create(**user_db.model_dump(exclude_unset=True))
        return {"message": "User created", "user_id": user_fb.uid}
    except Exception as e:
        raise ValueError(f"Signup failed: {str(e)}")

def login(user: UserLogin):
    """Inicia sesión en Firebase y devuelve un token de acceso."""
    try:
        user = auth.get_user_by_email(user.email)
        custom_token = auth.create_custom_token(user.uid)
        return {"access_token": custom_token, "token_type": "bearer"}
    except Exception as e:
        raise ValueError(f"Login failed: {str(e)}")

def recover_password(email: str):
    """Genera un link de recuperación y lo envía por correo."""
    try:
        reset_link = auth.generate_password_reset_link(email)
        send_email(email, reset_link)
        return {"message": f"Password reset email sent to {email}"}
    except Exception as e:
        raise ValueError(f"Failed to send password reset email: {str(e)}")
    

