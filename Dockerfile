# Step 1: Python ka base image use karo
FROM python:3.9-slim

# Step 2: Container ke andar ek folder banao
WORKDIR /app

# Step 3: Requirements file copy karo
COPY requirements.txt .

# Step 4: Flask install karo
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Baki code copy karo
COPY . .

# Step 6: Port batana
EXPOSE 5000

# Step 7: App run karne ka command
CMD ["python", "app.py"]