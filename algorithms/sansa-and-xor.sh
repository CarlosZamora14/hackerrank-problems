#!/bin/bash

read tests

for (( t = 0; t < tests; t++ )); do
    read n
    read -ra arr
    result=0

    [ $(( $n % 2 )) -eq 0 ] && echo 0 && continue

    for (( i = 0; i < n; i = i + 2 )); do
        result=$(( $result ^ ${arr[$i]} ))
    done

    printf "%s\n" $result
done
