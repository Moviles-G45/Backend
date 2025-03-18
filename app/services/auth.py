from firebase_admin import auth
from ..helpers.mail import send_email
from ..schemas.user import UserRequest, UserCreate, UserLogin
from ..models.user import User
from ..auth.firebase import verify_firebase_token

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

async def login(user):
    decoded_token = verify_firebase_token(user.token)
    uid = decoded_token.get("uid")

    # Optionally, fetch additional user details if needed
    user_record = auth.get_user(uid)

    # Perform any additional login logic, such as creating a session
    return {
        "message": "Login successful",
        "uid": uid,
        "email": user_record.email,
    }


def recover_password(email: str):
    """Genera un link de recuperación y lo envía por correo."""
    try:
        reset_link = auth.generate_password_reset_link(email)
        send_email(email, reset_link)
        return {"message": f"Password reset email sent to {email}"}
    except Exception as e:
        raise ValueError(f"Failed to send password reset email: {str(e)}")
    

