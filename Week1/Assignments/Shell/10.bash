#!/bin/bash

FOLDER="/opt/devops/script"
sudo mkdir -p "$FOLDER"

function onlyForUser(){
    chmod 007 "$FOLDER" 
}

onlyForUser
