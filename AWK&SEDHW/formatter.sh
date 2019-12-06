#!/bin/bash

CSV_File=$1
Current_Delimeter=$2
Replacement_Delimeter=$3

echo "USE LIKE THIS: ./formatter.sh CSV_File Current_Delimeter Replacement_Delimeter"

#awk '{print $0}' "$CSV_File"  | tr -s "$Current_Delimeter" "$Replacement_Delimeter"

awk '{print $0}' "$CSV_File" | sed "s/"$Current_Delimeter"/"$Replacement_Delimeter"/g"

echo "DONE"
