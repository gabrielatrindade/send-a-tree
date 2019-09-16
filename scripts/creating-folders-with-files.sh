#!/usr/bin/env bash

<<COMMENT1
i=1
while [ $i -le 3 ]
do
    mkdir -p data-sendatree/folder$i
    i=$((i+1))
done
COMMENT1

y=1
while [ $y -le 159 ]
do
    grep 'registration' day_$y  > data-sendatree/folder1/day_$y
    grep 'sent_a_free_tree' day_$y > data-sendatree/folder2/day_$y
    grep 'sent_a_super_tree' day_$y > data-sendatree/folder3/day_$y
    y=$((y+1))
done