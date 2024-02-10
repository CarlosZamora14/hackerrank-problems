#!/bin/bash

read expr

ans=$( printf "%s\n" "$expr" | bc -l )
printf "%.3f\n" $ans
