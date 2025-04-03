#!/bin/bash

BACKUP_DIR="/var/log/backups"
ARCHIVE_NAME="backup_$(date +%Y%m%d).tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" /var/log/*.log 2>/dev/null

echo "Backup created: $BACKUP_DIR/$ARCHIVE_NAME"
ls -lh "$BACKUP_DIR/$ARCHIVE_NAME"

