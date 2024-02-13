#!/bin/bash

read -d '' text
result=$(printf "%s" "$text" | uniq -ci)

while read line; do
    printf "%s\n" "$line"
done <  <(echo "$result")
