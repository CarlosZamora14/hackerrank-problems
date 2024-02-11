#!/bin/bash

while read line; do
    printf "%s\n" "$line" | cut -d ' ' -f -3
done
