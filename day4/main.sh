#!/bin/bash
while read line
do

    a1=$(echo $line | awk '{print $1}')
    a2=$(echo $line | awk '{print $2}')
    a3=$(echo $line | awk '{print $3}')
    a4=$(echo $line | awk '{print $4}')

    if [[ $a3 -ge $a1 && $a4 -le $a2 ]] || [[ $a1 -ge $a3 && $a2 -le $a4 ]]; then
        echo "YES"
    else
        echo "NO"
    fi
done < input.txt | grep 'YES' | wc -l && echo "this is the solution for Part 1"
