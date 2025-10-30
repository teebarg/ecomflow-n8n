#!/bin/bash
# Show status of n8n containers
echo "Containers status:"
docker-compose ps

echo ""
echo "Follow logs:"
docker-compose logs -f
