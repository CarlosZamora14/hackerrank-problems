#!/bin/bash

read char
case ${char,,} in
    y) printf "%s\n" YES ;;
    n) printf "%s\n" NO ;;
    *) exit 1 ;;
esac
