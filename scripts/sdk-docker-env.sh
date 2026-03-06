#!/bin/bash

IMAGE_NAME=cpp-dev-env
TAG=1.0
CONTAINER_NAME=dev_env

echo "Starting development container..."

docker run -it --rm \
--name ${CONTAINER_NAME} \
--hostname ${CONTAINER_NAME} \
-v $HOME:/workspace \
${IMAGE_NAME}:${TAG}