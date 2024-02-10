#!/bin/bash

read -d "" x y z

[ $(( x + y )) -le $z ] ||
[ $(( y + z )) -le $x ] ||
[ $(( z + x )) -le $y ] && exit 1

if [ $x -eq $y ] && [ $y -eq $z ]; then
    printf "%s\n" EQUILATERAL
elif [ $x -eq $y ] || [ $y -eq $z ] || [ $z -eq $x ]; then
    printf "%s\n" ISOSCELES
else
    printf "%s\n" SCALENE
fi
