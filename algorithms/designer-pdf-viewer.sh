#!/bin/bash

_ALPHABET="abcdefghijklmnopqrstuvwxyz"

get_letter_index() {
    #@ Return the index (0-25) of a given letter [a-z]
    #@ USAGE: get_letter_index lowercase_letter
    local prefix=${_ALPHABET%%$1*}
    _INDEX=${#prefix}
}

declare -a heights

read input
read word
heights=( $( echo $input | tr " " "\n" ) )

for (( i=0; i<${#word}; i++ )); do
    get_letter_index "${word:i:1}"
    height=${heights[$_INDEX]}
    [ $height -gt ${maximum_height:=0} ] && maximum_height=$height
done

printf "%s\n" $(( $maximum_height * ${#word} ))