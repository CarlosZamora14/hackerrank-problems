#!/bin/bash

while read line; do
    printf "%s\n" "$line" | cut -c 2-7
done
