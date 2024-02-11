#!/bin/bash

while read line; do
    printf "%s\n" "$line" | cut -c 3
done
