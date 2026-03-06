#!/bin/bash

IMAGE_NAME=cpp-dev-env
TAG=1.0

echo "Building Docker Image..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

docker build --no-cache -t ${IMAGE_NAME}:${TAG} -f "$PROJECT_ROOT/Dockerfile" "$PROJECT_ROOT"

if [ $? -eq 0 ]; then
echo "Build completed successfully!"
else
echo "Build failed!"
exit 1
fi