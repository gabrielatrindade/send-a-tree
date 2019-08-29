#!/usr/bin/env bash

<<COMMENT1

My first thought was to copy the files into the folders and then
create a script to remove the 'wrong' rows for that folder. 
But I realized I could use the 'grep' and create the files in the right
way.

i=1

while [ $i -le 159 ]
do
    y=1
    while [ $y -le 3 ]
    do
	cp day_$i data-sendatree/folder$y/day_$i
	y=$((y+1))
    done
    i=$((i+1))
done

COMMENT1