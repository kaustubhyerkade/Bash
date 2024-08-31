#Automated Backup to Remote Server
#Automatically back up files to a remote server using rsync.

#!/bin/bash
# Backup to Remote Server Script

SRC_DIR="/path/to/source/"
DEST_DIR="user@remote:/path/to/destination/"
LOG_FILE="/var/log/backup.log"

# Perform backup
rsync -avz $SRC_DIR $DEST_DIR >> $LOG_FILE 2>&1

# Log the backup
echo "Backup completed on $(date)." >> $LOG_FILE
