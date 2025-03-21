import os
from fastapi import FastAPI
from tortoise import exceptions as db_exception
from tortoise.contrib.fastapi import register_tortoise
from app.core.settings import TORTOISE_ORM, env
from app.routers import atm, budget, category, notification, report, transaction, auth
import firebase_admin
from firebase_admin import credentials
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI(title=env.APP_NAME, version=env.APP_VERSION)

# Inicializar Firebase
cred = credentials.Certificate("firebase_config.json")
firebase_admin.initialize_app(cred)

# Middleware CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Rutas
app.include_router(atm.router)
app.include_router(budget.router)
app.include_router(category.router)
app.include_router(transaction.router)
app.include_router(notification.router)
app.include_router(report.router)
app.include_router(auth.router)

# Base de datos
try:
    register_tortoise(
        app,
        config=TORTOISE_ORM,
        add_exception_handlers=True,
        generate_schemas=True
    )
except db_exception.ConfigurationError as e:
    print(f"An error has occurred while configuring the database: {e}")
    raise e
except db_exception.DBConnectionError as e:
    print(f"An error has occurred while connecting to the database: {e}")
    raise e

# Endpoint de salud
@app.get("/ok", tags=["health"])
async def health_check():
    return {"status": "ok"}


# 🚀 Ejecutar app si se llama directamente (por ejemplo con: python app/main.py)
if __name__ == "__main__":
    import uvicorn
    PORT = int(os.getenv("PORT", 8080))
    uvicorn.run("app.main:app", host="0.0.0.0", port=PORT)
