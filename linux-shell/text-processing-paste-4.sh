#!/bin/bash

counter=0
filenames=''
while read line || [ -n "$line" ]; do
    printf -v filename "file%010d.txt" $counter
    filenames+="${filenames:+" "}$filename"
    printf "%s\n" "$line" >> "$filename"
    counter=$(( counter + 1 ))
done

paste -d $'\t\t\n' $filenames
rm $filenames
