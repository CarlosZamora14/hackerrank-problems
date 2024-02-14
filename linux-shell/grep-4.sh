#!/bin/bash

read -d '' input
printf "%s\n" "$input" | grep -i '\<\(that\|the\|then\|those\)\>'
