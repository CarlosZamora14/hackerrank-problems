#!/bin/bash

read n
read input
answer=0

printf -v numbers "%s\n" $input
for number in $numbers; do
    answer=$(( answer ^ number ))
done

printf "%s\n" "$answer"
