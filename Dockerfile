FROM python:3.10-slim

#Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiar primero dependencias
COPY requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del contenido
COPY . .

# Comando por defecto para ejecutar la app
CMD ["python", "ejemplo.py"]

