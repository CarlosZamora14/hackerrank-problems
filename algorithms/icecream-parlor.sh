#!/bin/bash

function ice_cream_parlor() {
    #@ USAGE ice_cream_parlor money costs
    declare -A indices
    local money="$1"
    IFS=' ' read -ra costs_arr <<< "$2"

    for index in "${!costs_arr[@]}"; do
        local item_cost="${costs_arr[$index]}"

        index=$(( $index + 1 ))
        if [ -n "${indices[$item_cost]}" ]; then
            if [ $(( 2 * $item_cost )) -eq $money ]; then
                _ANSWER="${indices[$item_cost]} $index" && break
            fi

            continue
        fi

        remaining_money=$(( $money - $item_cost ))
        if [ -n "${indices[$remaining_money]}" ]; then
            _ANSWER="${indices[$remaining_money]} $index" && break
        fi

        indices[$item_cost]="$index"
    done
}

read tests

for (( t = 0; t < tests; t++ )); do
    read m && read n && read costs
    ice_cream_parlor "$m" "$costs"
    printf "%s\n" "$_ANSWER"
done
