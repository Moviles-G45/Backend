from fastapi import APIRouter, Query
from typing import Optional
from ..services.atm import get_nearby_atms

router = APIRouter(prefix="/atms", tags=["ATMs"])

@router.get("/nearby")
async def nearby_atms(
    lat: float = Query(...),
    lon: float = Query(...),
    radius: Optional[float] = Query(5.0)
):
    """Return a list of ATMs within a certain radius."""
    return await get_nearby_atms(lat, lon, radius)
