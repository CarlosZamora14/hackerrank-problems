#!/bin/bash

read -d '' input
printf "%s\n" "$input" | sed "s/\<the\>/this/"
