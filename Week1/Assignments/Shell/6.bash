#!/usr/bin/bash

FILENAME=$1
addReadWritePermission() {

    echo "Filename: $FILENAME"

    if [[ -z "$FILENAME" ]]; then
        echo "No filename provided"
        return 1
    fi
    chmod a+rw "$FILENAME" && echo "Given Permission"
}

addReadWritePermission
