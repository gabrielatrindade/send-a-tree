#!/usr/bin/env bash

i=1

while [ $i -le 159 ]
do
    wget "46.101.230.157/jds_june_2019/day_"$i -P /home/gtrindadi/jds_june_2019/data_sendatree/data-completed
    i=$((i+1))
done