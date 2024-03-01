#!/bin/bash

repeat() {
    #@ USAGE: repeat string times
    string="$1"
    target_len=$(( ${#string} * $2 ))

    while [ ${#string} -lt $target_len ]; do
        string+="$string"
    done

    _REPEAT="${string:0:$target_len}"
}

largest_decent_number() {
    #@ USAGE: largest_decent_number length
    _ANSWER=
    length="$1"
    residue=$(( $length % 3 ))

    if [ $residue -eq 0 ]; then
        repeat 5 "$length" && _ANSWER="$_REPEAT"
    elif [ $residue -eq 1 ] && [ $length -ge 10 ]; then
        repeat 5 $(( length - 10 )) && _ANSWER="$_REPEAT"
        repeat 3 10 && _ANSWER+="$_REPEAT"
    elif [ $residue -eq 2 ] && [ $length -ge 5 ]; then
        repeat 5 $(( length - 5 )) && _ANSWER="$_REPEAT"
        repeat 3 5 && _ANSWER+="$_REPEAT"
    fi

    [ -z $_ANSWER ] && _ANSWER=-1
}

read tests

for (( i = 0; i < tests; i++ )); do
    read n
    largest_decent_number $n
    printf "%s\n" $_ANSWER
done