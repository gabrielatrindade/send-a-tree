#!/usr/bin/env bash

i=$1

if (( $i % 2 == 0 ))
then
echo 'even'
else
echo 'odd'
fi