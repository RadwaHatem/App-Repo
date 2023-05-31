FROM python:3.7-slim

WORKDIR /app

COPY app.py /app

COPY requirements.txt /app

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]

#write this code to build and push your image

# # Build the Docker image
# docker build -t your-dockerhub-username/your-image-name .

# # Log in to Docker Hub
# docker login

# # Push the image to Docker Hub
# docker push your-dockerhub-username/your-image-name
# ```
