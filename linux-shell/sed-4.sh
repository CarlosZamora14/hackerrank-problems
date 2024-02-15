#!/bin/bash

read -d '' input
printf "%s\n" "$input" \
    | sed "s/[0-9]\{4\}/a&a/4" \
    | sed "s/\<[0-9]\{4\}\>/****/g" \
    | sed "s/a//g"
