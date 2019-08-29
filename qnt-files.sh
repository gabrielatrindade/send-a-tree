#!/usr/bin/env bash

#testando como pegar a quantidade de arquivos e depois incrementar a quantidade

cd data-sendatree/data-completed

lf=$(ls -1 | grep 'day_' | wc -l)
#echo $lf

nf=$((lf+1))
echo $nf