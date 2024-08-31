#Check if critical services are up and send an alert if any are down.
#!/bin/bash
# Service Uptime Monitoring Script

SERVICES=("nginx" "mysql" "ssh")
EMAIL="admin@example.com"

for service in "${SERVICES[@]}"; do
  if ! systemctl is-active --quiet $service; then
    echo "$service is down!" | mail -s "$service Alert" $EMAIL
  fi
done
