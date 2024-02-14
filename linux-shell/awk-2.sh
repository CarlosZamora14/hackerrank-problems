#!/bin/bash

read -d '' input
printf "%s\n" "$input" | awk '{
    if ( $2 >= 50 && $3 >= 50 && $4 >= 50 )
        print $1, ": Pass";
    else
        print $1, ": Fail";
}'
