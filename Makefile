# Makefile for ecomflow-n8n

# Start all containers in detached mode
up:
	docker-compose up -d

# Stop all containers
down:
	docker-compose down

# View logs for all containers
logs:
	docker-compose logs -f

# Restart n8n container only
restart-n8n:
	docker-compose restart n8n

# Backup n8n & postgres data
backup:
	tar czf backup-$(shell date +%Y%m%d%H%M%S).tar.gz data/

# Enter n8n container shell
shell-n8n:
	docker-compose exec n8n /bin/sh

# Pull latest images and recreate
update:
	docker-compose pull
	docker-compose up -d
