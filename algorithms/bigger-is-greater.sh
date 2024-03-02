#!/bin/bash

sort_string() {
    #@ Given a string, store a lexicographically sorted version of it in $_SORTED_STRING
    #@ USAGE: sort_string string
    _SORTED_STRING=$( echo "$1" | grep -o . | sort | tr -d $'\n' )
}

get_next_word() {
    #@ Given a word, creates the next lexicographical word by swapping some of its characters.
    #@ USAGE: get_next_word word
    local possible=0 word="$1"
    local length=${#word}
    local previous current

    ## The main idea is to notice that in a lexicographically largest string is obtained when
    ## the characters from right to left are in increasing order, so we need to find the
    ## largest index when two consecutive characters in the given string dont't follow this rule.
    for (( i = length - 1; i >= 0; i-- )); do
        current=${word:i:1}
        [ $i -eq $(( $length - 1)) ] && previous="$current" && continue

        if [[ $current < $previous ]]; then
            ## At this point we know that there is an answer
            ## We only need to handle the suffix starting at index $i
            local letter
            possible=1

            for (( j = length - 1; j >= 0; j-- )); do
                letter=${word:j:1}
                if [[ $letter > $current ]]; then
                    ## Extracting prefix and suffix from original string
                    local prefix="${word:0:i}"
                    local suffix="${word:i}"

                    ## Removing the character that will be at the beginning of the suffix
                    suffix="${suffix/$letter/''}"

                    ## Sorting the remaining characters in the suffix
                    sort_string "$suffix"
                    suffix="$_SORTED_STRING"

                    ## Composing the answer
                    _NEXT_WORD="$prefix$letter$suffix"
                    break
                fi
            done
            break
        fi

        previous=$current
    done

    [ $possible -eq 0 ] && _NEXT_WORD="no answer"
}

read tests
for (( t = 0; t < tests; t++ )); do
    read word
    get_next_word "$word"
    printf "%s\n" "$_NEXT_WORD"
done