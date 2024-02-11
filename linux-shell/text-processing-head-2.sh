#!/bin/bash

read -d '' line
printf "%s" "$line" | head -c 20
