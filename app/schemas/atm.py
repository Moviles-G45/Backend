from pydantic import BaseModel

class ATMPydantic(BaseModel):
    id: int
    nombre: str
    direccion: str
    latitud: str
    longitud: str
    tipo: str

    class Config:
        orm_mode = True
