#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull amina0786/simple-python-flask-app

docker ps  -q --filter "publish=5000" | grep -q . && (docker ps -q --filter "publish=5000")

# Run the Docker image as a container
docker run -d -p 5000:5000 amina0786/simple-python-flask-app
