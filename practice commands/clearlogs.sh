#!/bin/bash

tar -czf "/var/log/logs_$(date +"%Y%m%d_%H%M%S").tar.gz" /var/log/*.log

> /var/log/*.log

echo "Logs archived and cleared."

exit 0


