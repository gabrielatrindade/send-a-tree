#!/usr/bin/env bash


echo 'REGISTRATIONS PER DAY (showing file name): '
cat data-registration/day_* | cut -f1 -d' ' | sort -V | uniq -c

echo 'REGISTRATIONS PER DAY (showing date):'
cat data-registration/day_* | cut -f2 -d' ' | sort -V | uniq -c

echo 'REGISTRATIONS:'
cat data-registration/day_* | wc -l

echo 'REGISTRATIONS PER BIRTHS YEAR:'
cat data-registration/day_* | cut -f6 -d' ' | sort | uniq -c

echo 'REGISTRATIONS PER O.S.:'
cat data-registration/day_* | cut -f7 -d' ' | sort | uniq -c

echo 'REGISTRATIONS PER COUNTRY:'
cat data-registration/day_* | cut -f8 -d' ' | sort | uniq -c

echo 'REGISTRATIONS PER WAY OF REGISTRATION:'
cat data-registration/day_* | cut -f9 -d' ' | sort | uniq -c