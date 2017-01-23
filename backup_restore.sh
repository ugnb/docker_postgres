#!/bin/bash

pg_restore --clean --no-acl --no-owner -h localhost -U "$POSTGRES_USER" -d "$POSTGRES_DB" /backups/latest.dump || true

