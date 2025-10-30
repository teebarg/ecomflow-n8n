#!/bin/bash
# Deploy latest containers
echo "Pulling latest images..."
docker-compose pull

echo "Starting containers..."
docker-compose up -d

echo "Deployment complete!"
