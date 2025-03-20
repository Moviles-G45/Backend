# Usa una imagen base ligera de Python
FROM python:3.10-slim

# Configurar el directorio de trabajo
WORKDIR /app

# Copiar el archivo de dependencias
COPY requirements.txt .

# Instalar dependencias en un entorno virtual dentro del contenedor
RUN python -m venv /app/.venv
RUN /app/.venv/bin/pip install --no-cache-dir -r requirements.txt

# Copiar el código fuente
COPY . .

# Definir variables de entorno para usar el entorno virtual
ENV PATH="/app/.venv/bin:$PATH"

# Exponer el puerto de FastAPI
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
