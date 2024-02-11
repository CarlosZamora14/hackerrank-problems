#!/bin/bash

last=22
first=12

read -d '' line
printf "%s" "$line" | head -n $last | tail -n $(( last - first + 1 ))
