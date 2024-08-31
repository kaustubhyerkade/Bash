#Automated User Access Audit
#Audit user access to critical files and directories.


#!/bin/bash
# User Access Audit Script

CRITICAL_FILES=("/etc/passwd" "/etc/shadow" "/var/www/html")
LOG_FILE="/var/log/access_audit.log"

# Check access permissions
for FILE in "${CRITICAL_FILES[@]}"; do
  ACCESS=$(ls -l $FILE)
  echo "$FILE: $ACCESS" >> $LOG_FILE
done

# Log the audit
echo "User access audit completed on $(date)." >> $LOG_FILE
