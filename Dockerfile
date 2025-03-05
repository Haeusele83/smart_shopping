# Basis-Image
FROM python:3.11

# Arbeitsverzeichnis im Container
WORKDIR /app

# Abhängigkeiten installieren
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Code ins Image kopieren
COPY . .

# Port für Django freigeben
EXPOSE 8000

# Startbefehl für Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
