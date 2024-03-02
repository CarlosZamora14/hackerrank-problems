#!/bin/bash

read n

for (( i = 1; i <= n; i++ )); do
    factorial=$( bc <<< "${factorial:=1} * $i" )
done

printf "%s\n" "$factorial" | tr -d $'\\\n'