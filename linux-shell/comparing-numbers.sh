#!/bin/bash

read -d "" x y
if [ $x -lt $y ]; then
    printf "%s\n" "X is less than Y"
elif [ $x -gt $y ]; then
    printf "%s\n" "X is greater than Y"
else
    printf "%s\n" "X is equal to Y"
fi
