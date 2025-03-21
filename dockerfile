FROM python:3.10-slim

WORKDIR /app

# Copiar el binario del proxy al contenedor
COPY cloudsql-proxy/cloud-sql-proxy /cloud-sql-proxy
RUN chmod +x /cloud-sql-proxy

# Instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el código
COPY . .

EXPOSE 8080

# Iniciar proxy y luego app
CMD ["/bin/bash", "-c", "/cloud-sql-proxy budgetbuddy-454316:us-central1:budgetbuddy-db --port 5432 & uvicorn app.main:app --host 0.0.0.0 --port 8080"]
