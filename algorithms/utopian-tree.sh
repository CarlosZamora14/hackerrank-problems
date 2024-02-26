#!/bin/bash

solve() {
    #@ USAGE: solve num_cycles
    local tree_height=1
    for (( i = 0; i < $1; i++ )); do
        if [ $(( $i % 2 )) -eq 0 ]; then
            tree_height=$(( 2 * $tree_height ))
        else
            tree_height=$(( $tree_height + 1 ))
        fi
    done
    printf "%d\n" $tree_height
}

read tests
for (( t = 0; t < $tests; t++ )); do
    read n
    solve $n
done