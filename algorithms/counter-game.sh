#!/bin/bash

msb () {
    #@ Finds the most significant bit of a number
    #@ USAGE: msb number
    local bits=$(getconf LONG_BIT)
    local number="$1"
    local i

    for (( i = 1; i < bits; i = (2*i) )); do
        number=$(( $number | ($number >> $i) ))
    done

    _MSB=$(( 1 + number >> 1 ))
}

read tests

for (( t = 0; t < tests; t++ )); do
    read n
    winner=0

    while [ $n -gt 1 ]; do
        msb $n
        [ $_MSB -eq $n ] && n=$(( $n / 2 )) || n=$(( $n - $_MSB ))
        winner=$(( $winner ^ 1 ))
    done

    [ $winner -eq 0 ] && echo "Richard" || echo "Louise"
done