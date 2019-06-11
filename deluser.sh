#!/bin/bash
FILE=$1

if [ -z "$FILE" ]; then
        echo "We need a username such as user1. Provide one like ./deluser.sh user1"
	exit
fi

docker exec jumphost deluser $FILE
docker exec jumphost sh -c "cd /home ; rm -rf $FILE"
