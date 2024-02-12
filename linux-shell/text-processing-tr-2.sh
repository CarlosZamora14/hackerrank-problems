#!/bin/bash

read -d '' line
printf "%s" "$line" | tr -d 'a-z'
