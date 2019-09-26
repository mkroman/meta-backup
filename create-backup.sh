#!/usr/bin/env sh

BACKUP_SOURCE=${BACKUP_SOURCE:-/data}

echo "Creating backup"

restic backup --tag automatic --host meta "${BACKUP_SOURCE}"
