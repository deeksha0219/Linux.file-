#!/bin/bash

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR="/backups/home_backup_$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

cp -a /home "$BACKUP_DIR"

tar -czf "$BACKUP_DIR.tar.gz" -C "/backups" "home_backup_$TIMESTAMP"

tar -tzf "$BACKUP_DIR.tar.gz" > /dev/null && echo "Backup successful" || echo "Backup failed"

rm -rf "$BACKUP_DIR"

exit 0

