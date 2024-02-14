#!/bin/bash

read -d '' input
printf "%s\n" "$input" | grep -i '\<the\>'
