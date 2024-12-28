# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application code into the container
COPY . /app

# Expose the port the Flask app will run on (default is 5000)
EXPOSE 5000

# Set the environment variable to indicate Flask is in production mode
ENV FLASK_ENV=production

# Run the Flask app using the command below
CMD ["python", "app.py"]
