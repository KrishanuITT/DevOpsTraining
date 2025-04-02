#!/usr/bin/bash

SRC="./"
mkdir -p backup
DEST="backup/$(date +\%Y\%m\%d).tar.gz"

tar -czf "$DEST" "$SRC"

echo "Backup completed on $(date)"
