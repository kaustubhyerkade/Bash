#Service Status Check and Restart Script
#Checks if critical services are running and restarts them if they are down.

#!/bin/bash
# Service Status Check and Restart Script

# Services to monitor
SERVICES=("nginx" "mysql" "ssh")

for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$SERVICE"; then
        echo "$SERVICE is running."
    else
        echo "$SERVICE is not running. Attempting to start..."
        systemctl start "$SERVICE"
        if systemctl is-active --quiet "$SERVICE"; then
            echo "$SERVICE started successfully."
        else
            echo "Failed to start $SERVICE."
        fi
    fi
done
