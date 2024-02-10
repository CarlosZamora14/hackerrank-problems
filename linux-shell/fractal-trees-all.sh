#!/bin/bash

replace() {
    #@ Replace character at index in a given string
    #@ USAGE: replace string replacement index
    local prefix=${1:0:$3}
    local suffix=${1:$(( $3 + 1 ))}
    _RESULT=$prefix${2}$suffix
}

unset grid
for row in {0..62}; do
    grid[$row]=
    for col in {0..99}; do
        grid[$row]+=_
    done
done

print_grid() {
    #@ USAGE: print_grid
    for row in {0..62}; do
        printf "%s\n" ${grid[$row]}
    done
}

draw_branch() {
    #@ USAGE: draw_branch x y length [iterations]
    local x=$1
    local y=$2
    local cur_x
    local cur_y

    for (( i = 0; i < $3; i++ )); do
        y=$(( $2 - i ))
        replace "${grid[$y]}" 1 $x
        grid[$y]=$_RESULT
    done

    for (( i = 1; i <= $3; i++ )); do
        cur_x=$(( x - i ))
        cur_y=$(( y - i ))

        replace "${grid[$cur_y]}" 1 $cur_x
        grid[$cur_y]=$_RESULT
    done

    if [ $# -ge 4 ] && [ $4 -gt 1 ]; then
        draw_branch $cur_x $(( cur_y - 1 )) $(( $3 / 2 )) $(( $4 - 1 ))
    fi

    for (( i = 1; i <= $3; i++ )); do
        cur_x=$(( x + i ))
        cur_y=$(( y - i ))

        replace "${grid[$cur_y]}" 1 $cur_x
        grid[$cur_y]=$_RESULT
    done

    if [ $# -ge 4 ] && [ $4 -gt 1 ]; then
        draw_branch $cur_x $(( cur_y - 1 )) $(( $3 / 2 )) $(( $4 - 1 ))
    fi
}

start_x=49
start_y=62
start_length=16

read n

draw_branch $start_x $start_y $start_length $n
print_grid