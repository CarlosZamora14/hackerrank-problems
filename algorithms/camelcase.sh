#!/bin/bash

read string

## The following solution times out
# uppercase_letters="${string//[a-z]}"
# printf "%s\n" $(( 1 + ${#uppercase_letters} ))

echo $(( 1 + $( echo $string | tr -dc A-Z | wc -c ) ))