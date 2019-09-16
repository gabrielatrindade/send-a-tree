#!/usr/bin/env bash

echo "The top 3 airports:"
cut flightdelays.csv -d',' -f18 |sort |uniq -c |sort -n |tail -3

echo "The number of unique airports:"
cut flightdelays.csv -d',' -f18 |sort |uniq |wc -l
