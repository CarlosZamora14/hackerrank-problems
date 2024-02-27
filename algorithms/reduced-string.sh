#!/bin/bash

read string
output=

for (( i = 0; i < ${#string}; i++ )); do
    if [ -z $output ]; then
        output+=${string:$i:1}
    else
        last=${output: -1}
        if [ $last == ${string:$i:1} ]; then
            output=${output::-1}
        else
            output+=${string:$i:1}
        fi
    fi
done

printf "%s\n" "${output:=Empty String}"