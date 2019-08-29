#!/usr/bin/env bash

echo '------NUMBER OF PAID TREE FOR DAY:------'
cat data-super-tree/day_* | cut -f1 -d' ' | sort -V | uniq -c

echo '------NUMBER OF SENT FOR USER:------'
cat data-super-tree/day_* | cut -f3 -d' ' | sort | uniq -c

echo '------NUMBER OF SUPER TREE SENT:------'
cat data-super-tree/day_* | wc -l