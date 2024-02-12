#!/bin/bash

read -d '' line
printf "%s" "$line" | sort -t'|' -nrk2
