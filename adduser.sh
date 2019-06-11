#!/bin/bash
FILE=$1

if [ -z "$FILE" ]; then
        echo "We need a username such as user1. Provide one like ./adduser.sh user1"
	exit
fi 

echo -n Password: 
read -s password
echo

docker exec jumphost adduser $FILE --gecos 'First Last,RoomNumber,WorkPhone,HomePhone' --disabled-password
docker exec jumphost sh -c "echo $FILE:$password | chpasswd"
