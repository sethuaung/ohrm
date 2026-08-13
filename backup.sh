#!/bin/bash
# Daily MariaDB backup

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR="./backups"
DB_CONTAINER="orangehrm-db"

mkdir -p $BACKUP_DIR

docker exec $DB_CONTAINER mysqldump -u orangehrm -phrmpass orangehrm > $BACKUP_DIR/orangehrm_$TIMESTAMP.sql

echo "Backup completed: $BACKUP_DIR/orangehrm_$TIMESTAMP.sql"
