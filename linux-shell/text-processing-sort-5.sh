#!/bin/bash

read -d '' line
printf "%s" "$line" | sort -t$'\t' -nrk2
