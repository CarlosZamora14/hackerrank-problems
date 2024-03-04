#!/bin/bash

read tests

for (( t = 0; t < tests; t++ )); do
    read n
    read -ra arr

    declare -a partial_sums=( "${arr[0]}" )
    for (( i = 1; i < n; i++ )); do
        partial_sums[$i]=$(( ${partial_sums[$(( $i - 1 ))]} + ${arr[$i]} ))
    done

    is_possible=0
    for (( i = 0; i < n; i++ )); do
        right_sum=${partial_sums[$(( $n - 1))]}
        [ $i -gt 0 ] && right_sum=$(( $right_sum - ${partial_sums[$(( $i - 1 ))]} ))

        if [ ${partial_sums[$i]} -ge $right_sum ]; then
            [ ${partial_sums[$i]} -eq $right_sum ] && is_possible=1
            break;
        fi
    done


    [ $is_possible -eq 0 ] && echo "NO" || echo "YES"
done
