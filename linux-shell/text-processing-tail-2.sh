#!/bin/bash

IFS=
read -d '' line
printf "%s" "$line" | tail -c 20
