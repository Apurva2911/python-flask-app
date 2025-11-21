# Use official Python slim image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy only requirements first for caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir flask

# Copy the rest of the application
COPY . .

# Expose port
EXPOSE 5000

# Start the Flask app
CMD ["python", "app.py"]
