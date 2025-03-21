#!/bin/bash

THRESHOLD=80

df -h | awk 'NR>1 {print $5 " " $6}' | while read output
do
    usage=$(echo $output | awk '{print $1}' | sed 's/%//')
    partition=$(echo $output | awk '{print $2}')

    if [ "$usage" -ge "$THRESHOLD" ]; then
        echo "Warning: High disk usage detected on $partition ($usage%)"
    fi
done
