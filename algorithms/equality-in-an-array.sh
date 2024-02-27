#!/bin/bash

find_index() {
    #@ USAGE: find_index number array
    local found=0
    number="$1"
    shift
    array=( "$@" )

    for index in "${!array[@]}"; do
        if [ $(( $index % 2 )) -eq 1 ]; then
            continue
        fi

        if [ ${array[$index]} -eq $number ]; then
            found=1
            _INDEX=$index
        fi
    done

    [ $found -eq 0 ] && _INDEX=-1
}

declare -a numbers frequencies

read n
read input
numbers=( $( echo $input | tr " " "\n" ) )

for number in "${numbers[@]}"; do
    find_index $number "${frequencies[@]}"

    if [ $_INDEX -ne -1 ]; then
        frequencies[$(( $_INDEX + 1 ))]=$(( ${frequencies[$(( $_INDEX + 1 ))]} + 1 ))
    else
        frequencies+=( $number 1 )
    fi
done

max_repetitions=0

for index in "${!frequencies[@]}"; do
    if [ $(( $index % 2 )) -eq 0 ]; then
        continue
    fi

    curr_value=${frequencies[$index]}
    [ ${curr_value} -gt $max_repetitions ] && max_repetitions=$curr_value
done

printf "%s\n" $(( $n - $max_repetitions ))

