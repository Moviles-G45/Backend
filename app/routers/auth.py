from fastapi import APIRouter
from ..services.auth import (
    login_user,
    signup_user,
    recover_password,
    reset_password,
    logout_user
)

router = APIRouter(prefix="/auth", tags=["Auth"])

@router.post("/login")
async def login():
    """Handle user login."""
    return await login_user()

@router.post("/signup")
async def signup():
    """Handle user signup."""
    return await signup_user()

@router.post("/recover")
async def recover():
    """Trigger a password reset email or link."""
    return await recover_password()

@router.post("/reset")
async def reset():
    """Reset the password using the token."""
    return await reset_password()

@router.post("/logout")
async def logout():
    """Logout the user (invalidate token)."""
    return await logout_user()
