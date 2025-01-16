# Use a lightweight Python base image
FROM python:3.10-slim

# Install any Linux packages you need (for scraping or whatever).
# We'll keep it empty for now, but here's a placeholder:
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    # Add more libs here if needed...
    && rm -rf /var/lib/apt/lists/*

# Copy requirements.txt into container
COPY requirements.txt /app/requirements.txt

# Switch to /app as working directory
WORKDIR /app

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy your code (including main.py) into /app
COPY . /app

# Expose port 8080
EXPOSE 8080

# Command to start the Flask app
CMD ["python", "main.py"]
# Use a lightweight Python base image
FROM python:3.10-slim

# Install any Linux packages you need (for scraping or whatever).
# We'll keep it empty for now, but here's a placeholder:
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    # Add more libs here if needed...
    && rm -rf /var/lib/apt/lists/*

# Copy requirements.txt into container
COPY requirements.txt /app/requirements.txt

# Switch to /app as working directory
WORKDIR /app

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy your code (including main.py) into /app
COPY . /app

# Expose port 8080
EXPOSE 8080

# Command to start the Flask app
CMD ["python", "main.py"]
# Use a lightweight Python base image
FROM python:3.10-slim

# Install any Linux packages you need (for scraping or whatever).
# We'll keep it empty for now, but here's a placeholder:
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    # Add more libs here if needed...
    && rm -rf /var/lib/apt/lists/*

# Copy requirements.txt into container
COPY requirements.txt /app/requirements.txt

# Switch to /app as working directory
WORKDIR /app

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy your code (including main.py) into /app
COPY . /app

# Expose port 8080
EXPOSE 8080

# Command to start the Flask app
CMD ["python", "main.py"]# Use a lightweight Python base image
FROM python:3.10-slim

# Install any Linux packages you need (for scraping or whatever).
# We'll keep it empty for now, but here's a placeholder:
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    # Add more libs here if needed...
    && rm -rf /var/lib/apt/lists/*

# Copy requirements.txt into container
COPY requirements.txt /app/requirements.txt

# Switch to /app as working directory
WORKDIR /app

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy your code (including main.py) into /app
COPY . /app

# Expose port 8080
EXPOSE 8080

# Command to start the Flask app
CMD ["python", "main.py"]

