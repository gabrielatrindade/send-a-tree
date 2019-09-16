#!/usr/bin/env bash

i=1

while [ $i -lt 101 ]
do
    if (( $i % 3 == 0 )) || (( $i % 7 == 0 ))
	then
	echo 'BOOM'
    else
	echo $i
    fi
i=$((i+1))
done