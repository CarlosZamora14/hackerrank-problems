#!/bin/bash

read -d '' input
printf "%s\n" "$input" | grep -iv '\<that\>'
