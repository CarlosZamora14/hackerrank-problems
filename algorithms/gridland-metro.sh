#!/bin/bash

declare -A sorted_input input
read n m k

expr="$n * $m"

for (( i = 0; i < k; i++ )); do
    read row start end
    input[$row]+="${input[$row]:+$'\n'}$start $end"
done

for row in "${!input[@]}"; do
    sorted_input[$row]=$( sort -nk1 <<< "${input[$row]}" )
done

for row in "${!sorted_input[@]}"; do
    readarray -t s < <( awk '{ print $1 }' <<< "${sorted_input[$row]}" )
    readarray -t e < <( awk '{ print $2 }' <<< "${sorted_input[$row]}" )

    for (( i = 0; i < ${#s[@]}; i++ )); do
        if [ $i -gt 0 ]; then
            prev_s=${s[$(( $i - 1 ))]}
            prev_e=${e[$(( $i - 1 ))]}

            if [ ${s[$i]} -le $prev_e ]; then
                s[$i]=$(( $prev_e + 1 ))

                if [ ${s[$i]} -gt ${e[$i]} ]; then
                    s[$i]=$prev_s
                    e[$i]=$prev_e
                    continue
                fi
            fi
        fi

        [ ${s[$i]} -le ${e[$i]} ] && expr+=" - (${e[$i]} - ${s[$i]} + 1)"
    done
done

printf "%s\n" $( bc <<< "$expr" )