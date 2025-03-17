import math
import httpx
from ..schemas.atm import ATMPydantic
from ..core.settings import env

def haversine(lat1: float, lon1: float, lat2: float, lon2: float) -> float:
    """
    Calculates the distance (in kilometers) between two points given their latitudes and longitudes.
    """
    R = 6371.0  # Earth's radius in km
    dlat = math.radians(lat2 - lat1)
    dlon = math.radians(lon2 - lon1)
    a = math.sin(dlat / 2) ** 2 + math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) * math.sin(dlon / 2) ** 2
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
    return R * c

async def get_city_state(lat: float, lng: float):
    """
    Performs reverse geocoding using the Google API to obtain the city and state.
    """
    url = f'https://maps.googleapis.com/maps/api/geocode/json?latlng={lat},{lng}&key={env.GOOGLE_MAPS_API_KEY}'
    async with httpx.AsyncClient() as client:
        response = await client.get(url)
        response.raise_for_status()
        data = response.json()
    
    city = None
    state = None
    if data.get('status') == 'OK':
        for result in data.get('results', []):
            for component in result.get('address_components', []):
                types = component.get('types', [])
                if ('locality' in types or 'administrative_area_level_2' in types) and not city:
                    city = component.get('long_name')
                if 'administrative_area_level_1' in types and not state:
                    state = component.get('short_name')
            if city and state:
                break
    return city, state

async def get_nearby_atms(lat: float, lon: float, radius: float):
    """
    Retrieves Servibanca ATMs by:
     1. Using the Google API to obtain the user's city and state.
     2. Calling the Servibanca API with those parameters.
     3. Filtering ATMs by distance and returning the 10 closest.
    """
    city, state = await get_city_state(lat, lon)

    url = "https://www.servibanca.com.co/ws/oficinas"
    params = {
        "info": "puntos",
        "departamento": state.upper() if state != 'Bogotá' else "CUNDINAMARCA",
        "ciudad": city.upper(),
    }
    async with httpx.AsyncClient() as client:
        response = await client.get(url, params=params)
        response.raise_for_status()
        atms_data = response.json()

    # Build a list of (distance, atm) tuples
    dist_atms = []
    for atm in atms_data:
        try:
            atm_lat = float(atm.get("latitud"))
            atm_lon = float(atm.get("longitud"))
        except (ValueError, TypeError):
            continue
        distance = haversine(lat, lon, atm_lat, atm_lon)
        if distance <= radius:
            dist_atms.append((distance, atm))

    dist_atms.sort(key=lambda x: x[0])

    result = []
    for _, atm in dist_atms:
        mapped = {
            "id": atm.get("idRow"),
            "nombre": atm.get("nombre"),
            "direccion": atm.get("direccion"),
            "latitud": atm.get("latitud"),
            "longitud": atm.get("longitud"),
            "tipo": atm.get("negocio")
        }
        result.append(ATMPydantic.model_validate(mapped))

    return result

