#!/bin/bash

declare -a countries
while read line || [ -n "$line" ]; do
    countries+=( "$line" )
done

echo ${countries[3]}
