#!/bin/bash
# Backup n8n & PostgreSQL data
TIMESTAMP=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

echo "Creating backup: $BACKUP_FILE"

tar czf $BACKUP_FILE data/

echo "Backup complete!"
