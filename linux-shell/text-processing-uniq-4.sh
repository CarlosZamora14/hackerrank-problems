#!/bin/bash

read -d '' text
result=$(printf "%s" "$text" | uniq -c)

while read line; do
    count=${line%%' '*}
    if [ $count -eq 1 ]; then
        text_line="${line#*' '}"
        printf "%s\n" "$text_line"
    fi
done <  <(echo "$result")
