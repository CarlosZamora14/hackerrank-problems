#!/bin/bash

## Timeout
# read n
# input=

# for (( i = 1; i <= n; i++ )); do
#     read line
#     if [ $(( 2 * i )) -le $n ]; then
#         number="${line%%' '*}"
#         input+="$number -"
#     else
#         input+="$line"
#     fi

#     input+=$'\n'
# done

# printf "%s" "$input" | sort -nk1 -s | sed -E 's/[0-9]+\s//' | tr $'\n' ' '

read n
read -d '' input

tr $'\n' ' ' < <(( sed -E 's/[0-9]+\s//' ) < <(( sort -nk1 -s ) < <(
    printf "%s\n" "$input" | awk -v n="$n" '{
        if ( 2 * NR <= n )
            print $1, "-";
        else
            print $0
    }'
)))
