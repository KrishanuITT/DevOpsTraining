#!/usr/bin/bash
FOLDERNAME=$1
addPermissiontoFolder(){
    if [[ -z $FOLDERNAME ]]; then
        echo "No filename provided"
        return
    fi
    chmod a-rw $FOLDERNAME
    echo "Added Permission to Folder"
}

addPermissiontoFolder