FROM postgres:latest

COPY latest.dump /backups/latest.dump
COPY backup_restore.sh /docker-entrypoint-initdb.d/backup_restore.sh

HEALTHCHECK --interval=5s --timeout=3s --retries=36 \
	CMD [ -f /tmp/restore_finished ] && (pg_isready -h localhost -p 5432 -U "postgres" -d "${POSTGRES_DB}" || exit 1)
