#!/bin/bash

read -d '' input
printf "%s\n" "$input" | awk '{
    if ( NR % 2 == 0 )
        print previous";"$0;
    previous = $0;
}
END {
    if ( NR % 2 )
        print $0";";
}'
