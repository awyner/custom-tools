#!/bin/bash
if [[ $ == "h" || $# != 2 ]]
then
    echo "Usage: zero-list.sh namefile ipfile"
    echo "Simple script for running zerologon_tester.py with input files rather than one by one"
    exit 0
else
    countA=0
    while read lineA
    do
        countB=0
        while read lineB
        do
            if [ "$countA" -eq "$countB" ]
            then
	        echo "Testing $lineA $lineB:"
	        python3 zerologon_tester.py $lineA $lineB
	        echo
                break
            fi
            countB=`expr $countB + 1`
            done < $2
         countA=`expr $countA + 1`
    done < $1
fi
