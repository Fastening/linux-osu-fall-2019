#!/bin/bash

dir=$1
reg=$2
a=$(ls -R $dir | grep -m 1 -ohE "$reg" | xargs -d '\n' cat) #put grep search in quotes.
if [[ -n $a ]]; then #tests if the string output is true // tests if result is found.
echo "$a"
else echo "no file found try altering grep search"
fi
