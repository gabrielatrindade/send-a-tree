#!/usr/bin/env bash


i=1
while [ $i -le 166 ]
do
    mv data-sendatree/day_$i data-sendatree/data-completed/day_$i
    i=$((i+1))
done

#i=1
#while [ $i -le 3 ]
#do
#    mv folder$i data-sendatree/folder$i
#    i=$((i+1))
#done

#mv download-automation.sh data-sendatree/download-automation.sh
#mv logfile-error.csv data-sendatree/logfile-error.csv