#!/bin/bash

function cipher() {
    #@ USAGE: cipher num_shifts encoded_string
    local k="$1"
    local string="$2"
    local n=$(( ${#string} - $k + 1 ))

    local previous="${string:0:1}" current sum
    _DECODED_STRING="$previous"

    for (( i = 1; i < n; i++ )); do
        current="${string:i:1}"
        sum=$(( $current + $previous ))

        if [ $i -ge $k ]; then
            sum=$(( $sum + ${_DECODED_STRING:$(( $i - $k )):1} ))
        fi

        _DECODED_STRING+=$(( $sum % 2 ))
        previous="$current"
    done
}

read n k
read s
cipher "$k" "$s"
printf "%s\n" "$_DECODED_STRING"