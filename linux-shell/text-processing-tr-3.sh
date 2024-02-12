#!/bin/bash

read -d '' line
printf "%s" "$line" | tr -s ' ' ' '
