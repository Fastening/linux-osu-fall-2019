#!/bin/bash


test=$1

echo "remember the test data is variable 1"

cat $test | grep -Eo "\w[A-Za-z]*.ion" > /tmp/ion.txt

cat $test | grep -Eo "\w[A-Za-z]*ation" > /tmp/ation.txt

cat $test | grep -Eo "\d+" > /tmp/numbers.txt

cat $test | grep -Eo "\w[A-Za-z]*ed" > /tmp/ed.txt

cat $test | grep -Eo "^[A-Z].*[.!]$" > /tmp/sentences.txt

echo "DONE!"
