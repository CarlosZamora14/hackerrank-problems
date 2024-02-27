#!/bin/bash

declare -a clouds dp=(0)

read n
read input
clouds=( $( echo $input | tr " " "\n" ) )

dp+=( $(for (( i = 1; i < n; i++ )); do echo -1; done) )

for (( i = 1; i < n; i++ )); do
    minimum=
    if [ ${clouds[$(( $i - 1 ))]} -ne 1 ]; then
        minimum=$(( ${dp[$(( $i - 1 ))]} + 1 ))
    fi

    if [ $i -gt 1 ] && [ ${clouds[$(( $i - 2 ))]} -ne 1 ]; then
        possible_minimum=$(( ${dp[$(( $i - 2 ))]} + 1 ))
        [ -z $minimum ] || [ $minimum -gt  $possible_minimum ] && \
            minimum=$possible_minimum
    fi

    [ -n $minimum ] && dp[$i]=$minimum
done

printf "%s\n" ${dp[$(( $n - 1 ))]}
