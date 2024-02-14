#!/bin/bash

read -d '' input
printf "%s\n" "$input" | grep '\([0-9]\)\s*\1'
