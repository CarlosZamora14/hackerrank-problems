#!/bin/bash

read n
read -ra array_a
read -ra array_b

declare -A freq_a freq_b

for elem in "${array_a[@]}"; do
    freq_a[$elem]=$(( ${freq_a[$elem]:=0} + 1 ))
done

for elem in "${array_b[@]}"; do
    freq_b[$elem]=$(( ${freq_b[$elem]:=0} + 1 ))
done

beaut_pairs=0

for key in "${!freq_a[@]}"; do
    if [ ${freq_a[$key]} -lt ${freq_b[$key]:=0} ]; then
        beaut_pairs=$(( $beaut_pairs + ${freq_a[$key]} ))
    else
        beaut_pairs=$(( $beaut_pairs + ${freq_b[$key]} ))
    fi
done

beaut_pairs=$( [ $beaut_pairs -eq $n ] && echo $(( $beaut_pairs - 1 )) || echo $(( $beaut_pairs + 1 )) )

echo $beaut_pairs