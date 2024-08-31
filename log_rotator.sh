#This script Rotates and compresses log files to manage disk space and maintain system performance.

#!/bin/bash
# Log Rotation Script

# Log directory
LOG_DIR="/var/log/myapp"

# Find logs older than 7 days and compress them
find "$LOG_DIR" -type f -name "*.log" -mtime +7 -exec gzip {} \;

# Delete compressed logs older than 30 days
find "$LOG_DIR" -type f -name "*.gz" -mtime +30 -exec rm {} \;

echo "Log rotation completed on $(date)." | sudo tee -a /var/log/log_rotation.log
