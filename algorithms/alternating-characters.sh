#!/bin/bash

## Time limit exceeded
# solve() {
#     #@ USAGE: solve string
#     local curr_length=0 sum=0
#     for (( i = 0; i < ${#1}; i++ )); do
#         if [ $i -eq 0 ] || [ ${1:$(( i - 1 )):1} == ${1:$i:1} ]; then
#             curr_length=$(( $curr_length + 1 ))
#         else
#             sum=$(( $sum + $curr_length - 1 ))
#             curr_length=1
#         fi
#     done

#     sum=$(( $sum + $curr_length - 1 ))
#     echo $sum
# }

## Time limit exceeded again!
solve() {
    #@ USAGE: solve string
    new_string=$( sed -E 's/(A{2,}|B{2,})/k/g' <<< "$1" )
    echo $(( ${#1} - ${#new_string} ))
}

read tests

for (( t = 0; t < $tests; t++ )); do
    read string
    solve $string
done
