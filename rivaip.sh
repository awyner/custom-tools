#!/bin/bash
# Call with number to retrieve IP of RIVA with that number

if [[ $# != 1 ]]
then
    echo 'Usage: rivaip <number>'
    exit 1
fi

ip=`curl -s http://openvpn1.issgs.net:8080 | grep '^172.'| grep -iw $1 | cut -d ',' -f1`

if [[ $? != 0 ]] 
then
    echo 'Usage: rivaip <number>'
elif [[ $ip ]]
then
    echo $ip
else
    echo 'RIVA '$1' is offline or does not exist'
fi
