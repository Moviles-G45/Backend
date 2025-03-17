from fastapi import FastAPI
from tortoise import exceptions as db_exception
from tortoise.contrib.fastapi import register_tortoise
# from fastapi.middleware.cors import CORSMiddleware
from app.core.settings import TORTOISE_ORM, env
from app.auth.routes import router as auth_router
from app.routers import atm, auth, budget, category, notification, report, transaction

app = FastAPI(title=env.APP_NAME, version=env.APP_VERSION)


# origins = [

# ]

# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=origins,
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
# )


app.include_router(auth.router)
app.include_router(atm.router)
app.include_router(budget.router)
app.include_router(category.router)
app.include_router(transaction.router)
app.include_router(notification.router)
app.include_router(report.router)


try:
    register_tortoise(
        app,
        config=TORTOISE_ORM,
        add_exception_handlers=True,
        generate_schemas=True
    )
except db_exception.ConfigurationError as e:
    print(f"An error has ocurred while configuring the database: {e}")
    raise e
except db_exception.DBConnectionError as e:
    print(f"An error has ocurred while connecting to the database: {e}")
    raise e

@app.get("/ok", tags=["health"])
async def health_check():
    return {"status": "ok"}


app.include_router(auth_router)