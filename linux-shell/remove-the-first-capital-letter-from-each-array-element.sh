#!/bin/bash

readarray -t countries
for index in "${!countries[@]}"; do
    countries[$index]=${countries[$index]/[A-Z]/'.'}
done
echo "${countries[@]}"
