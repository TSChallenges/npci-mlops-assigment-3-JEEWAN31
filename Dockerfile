# Docker file
# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code and dependencies into the container
COPY employee_stats_app.py /app/
COPY requirements.txt /app/
COPY dataset.csv /app/
# COPY dataset /app/dataset/

# Install the required dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on (adjust if needed)
EXPOSE 6080

# Command to run the application
CMD ["python", "employee_stats_app.py"]
