#1/bin/bash

if [ $1 == "-h" ] 
then
    echo "Usage: snapback-helper.sh"
    echo "Call script from directory containing host.txt files."
    exit 
fi

if [ -f "http_80.txt" ]
then
    while read -r line; do echo 'http://'$line >> all-hosts.txt; done < http_80.txt
fi

if [ -f "http_8080.txt" ] 
then 
    while read -r line; do echo 'http://'$line':8080' >> all-hosts.txt; done < http_8080.txt
fi

if [ -f "http_443.txt" ]
then
    while read -r line; do echo 'https://'$line >> all-hosts.txt; done < http_443.txt
fi

if [ -f "http_8443.txt" ]
then
    while read -r line; do echo 'https://'$line':8443' >> all-hosts.txt; done < http_8443.txt
fi

if [ -f "all-hosts.txt" ]
then
    echo "Done. all-hosts.txt created"
else
    echo "Done. No input files found"

fi
