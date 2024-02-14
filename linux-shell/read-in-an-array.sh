#!/bin/bash

declare -a countries
while read line || [ -n "$line" ]; do
    countries[${#countries[@]}]="$line"
done

echo ${countries[@]}
