#!/bin/bash

while read line; do
    printf "%s\n" "$line" | cut -f -3
done
