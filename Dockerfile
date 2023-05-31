FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app's source code to the working directory
COPY . .

# Set the container's entry point
CMD ["python", "app.py"]