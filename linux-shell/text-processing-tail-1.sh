#!/bin/bash

read -d '' line
printf "%s" "$line" | tail -n 20
