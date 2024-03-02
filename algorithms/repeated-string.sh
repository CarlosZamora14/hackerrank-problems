#!/bin/bash

read string
read n

len=${#string}
residue=$( bc <<< "$n % $len" )
times=$( bc <<< "$n / $len" )

for (( i = 0; i < len; i++ )); do
    [ $i -eq $residue ] && answer=$frequency

    if [[ ${string:i:1} = 'a' ]]; then
        frequency=$(( ${frequency:=0} + 1 ))
    fi
done

answer=$( bc <<< "${answer:=0} + $times * ${frequency:=0}" )
printf "%s\n" $answer