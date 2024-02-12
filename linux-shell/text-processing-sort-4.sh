#!/bin/bash

read -d '' line
printf "%s" "$line" | sort -nr
