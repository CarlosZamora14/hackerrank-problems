#!/bin/bash

read tests
bits=$(getconf LONG_BIT)

for (( t = 0; t < tests; t++ )); do
    read a b

    len=$(( $b - $a + 1 ))
    result=0
    pow2=1

    for (( k = 0; k < bits && b > 0; k++ )); do
        if [ $pow2 -ge $len ] && [ $(( $b % 2 )) -eq 1 ]; then
            [ $b -eq $a ] && result=$(( $result + $pow2 ))
        fi

        b=$(( $b / 2 )) && a=$(( $a / 2 )) && pow2=$(( $pow2 * 2 ))
    done

    printf "%s\n" $result
done