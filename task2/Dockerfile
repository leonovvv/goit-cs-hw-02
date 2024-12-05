# Dockerfile
FROM python:3.11-slim

WORKDIR /app

# Встановлення необхідних пакетів для psycopg2
RUN apt-get update && apt-get install -y libpq-dev gcc

# Копіювання файлів
COPY . .

# Встановлення залежностей
RUN pip install --no-cache-dir -r requirements.txt

# Команда для запуску застосунку
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
