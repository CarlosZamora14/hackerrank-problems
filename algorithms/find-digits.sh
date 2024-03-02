#!/bin/bash

read tests

for (( t = 0; t < tests; t++ )); do
    read number
    divisors=0

    for (( i = 0; i < ${#number}; i++ )); do
        digit=${number:$i:1}
        [ $digit -ne 0 ] && [ $(( $number % $digit )) -eq 0 ] && divisors=$(( divisors + 1 ))
    done

    printf "%s\n" $divisors
done