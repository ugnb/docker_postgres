FROM postgres:latest

COPY latest.dump /backups/latest.dump
COPY backup_restore.sh /docker-entrypoint-initdb.d/backup_restore.sh

