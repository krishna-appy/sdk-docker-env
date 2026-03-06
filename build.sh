#!/bin/bash

IMAGE_NAME=cpp-dev-env
TAG=1.0

echo "Building Docker Image..."

docker build --no-cache -t ${IMAGE_NAME}:${TAG} .

# Check if build succeeded
if [ $? -eq 0 ]; then
    echo "Build completed successfully!"
else
    echo "Build failed!"
    exit 1
fi
