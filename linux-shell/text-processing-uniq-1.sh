#!/bin/bash

read -d '' line
printf "%s" "$line" | uniq
