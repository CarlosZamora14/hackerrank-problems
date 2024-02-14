#!/bin/bash

read -d '' input
printf "%s\n" "$input" | awk '! /[0-9]+ [0-9]+ [0-9]+/ { print "Not all scores are available for", $1 }'
