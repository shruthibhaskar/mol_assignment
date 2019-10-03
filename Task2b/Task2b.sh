find /var/log -name 'application.log.*.bz2' -type f -mtime +3 -execdir rm -- '{}' \;
find /var/log -name 'backend.log.*.bz2' -type f -mtime +3 -execdir rm -- '{}' \;
find /var/log -name 'monitoring-*__*.log' -type f -mtime +3 -execdir rm -- '{}' \;