#!/bin/bash

echo "Cleaning unused Docker images..."

sudo docker system prune -a -f

echo "Cleanup completed."
