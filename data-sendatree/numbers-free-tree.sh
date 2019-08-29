#!/usr/bin/env bash

echo '------ NUMBER OF FREE TREE SENT PER DAY:------' 
cat data-free-tree/day_* | cut -f1 -d' ' | sort -V | uniq -c

echo '------ NUMBER OF FREE TREE SENT: ------'
cat data-free-tree/day_* | wc -l