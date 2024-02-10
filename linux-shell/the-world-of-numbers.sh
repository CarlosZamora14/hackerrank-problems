#!/bin/bash

read -d "" x y
printf "%d\n" $(( x + y )) $(( x - y )) $(( x * y )) $(( x / y ))
