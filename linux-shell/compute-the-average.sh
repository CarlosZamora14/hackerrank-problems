#!/bin/bash

read n
for (( i = 0; i < n; i++ )); do
    read num
    sum=$(( ${sum:=0} + num ))
done

avg=$( echo "$sum / $n" | bc -l )
printf "%.3f\n" $avg
