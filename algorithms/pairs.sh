#!/bin/bash

declare -A assoc_arr

read n target

# read input
# while read number || [ -n "$number" ]; do
#     assoc_arr[$number]=1
# done < <(( tr ' ' $'\n' ) <<< $input )

read -ra numbers
for number in "${numbers[@]}"; do
    assoc_arr[$number]=1
done

num_pairs=0

for key in "${!assoc_arr[@]}"; do
    [ -n "${assoc_arr[$(( $key + $target ))]}" ] && num_pairs=$(( $num_pairs + 1 ))
done

printf "%s\n" $num_pairs