#!/bin/bash

for (( i=1; i < 100; i++)); do
    [ $(( i % 2 )) -eq 1 ] && printf "%d\n" $i
done
