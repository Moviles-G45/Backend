from pydantic import ValidationError
from pydantic_settings import BaseSettings, SettingsConfigDict
from tortoise import Tortoise

ENV_PATH = ".env"

class Settings(BaseSettings):
    ENV: str = "development"
    APP_NAME: str = "BUDGETBUDDY-API"
    APP_VERSION: str = "1.0.0"

    # 👉 Esta URL reemplaza host, port, user, password, etc.
    DATABASE_URL: str = "postgres://postgres:postgres@/budgetbuddy-db?host=/cloudsql/budgetbuddy-454316:us-central1:budgetbuddy-db"

    GOOGLE_MAPS_API_KEY: str = ""

    SMTP_SERVER: str = "smtp.gmail.com"
    SMTP_PORT: int = 587
    SMTP_EMAIL: str = "tucorreo@gmail.com"
    SMTP_PASSWORD: str = "tupassword"

    model_config = SettingsConfigDict(case_sensitive=True, env_file=ENV_PATH)


# Variable global para usar en otras partes
env = None

try:
    env = Settings()

    TORTOISE_ORM = {
        "connections": {
            "default": env.DATABASE_URL
        },
        "apps": {
            "models": {
                "models": ["app.models"],
                "default_connection": "default",
            }
        }
    }

    Tortoise.init_models(["app.models"], "models")

except ValidationError as e:
    print(f"A validation error has occurred in config file {ENV_PATH}: {e}")
