#!/bin/bash
# Restore backup
if [ -z "$1" ]; then
  echo "Usage: ./restore.sh <backup-file>"
  exit 1
fi

BACKUP_FILE=$1

if [ ! -f "$BACKUP_FILE" ]; then
  echo "File $BACKUP_FILE does not exist"
  exit 1
fi

echo "Restoring backup from $BACKUP_FILE..."
tar xzf $BACKUP_FILE -C .

echo "Restore complete!"
