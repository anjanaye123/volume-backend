FROM python:3.10-slim

# 1. Install system-level packages required for Open3D & CADQuery
RUN apt-get update && apt-get install -y \
    libx11-6 \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && rm -rf /var/lib/apt/lists/*

# 2. Set working directory
WORKDIR /app

# 3. Copy and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy app files
COPY . .

# 5. Run the app
CMD ["python", "app.py"]
