#Automated Backup Script
#Creates compressed backups of specified directories and stores them in a backup location with timestamped filenames.

#Supports multiple directories for backup.
#Creates compressed archives to save space.
#Uses timestamps to prevent overwriting previous backups.
#create a cron job to execute this bash




#!/bin/bash
# Automated Backup Script

# Directories to backup
SOURCE_DIRS=("/etc" "/var/www" "/home/user/documents")

# Backup destination
BACKUP_DIR="/backup"

# Create backup filename with timestamp
BACKUP_FILE="$BACKUP_DIR/backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Create backup
tar -czf "$BACKUP_FILE" "${SOURCE_DIRS[@]}"

# Verify backup creation
if [ -f "$BACKUP_FILE" ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!"
fi
