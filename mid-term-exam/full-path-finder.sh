#!/bin/bash

dir=$1 #directory to look into
reg=$2 #regex pattern
txt=$3 #text file to write to

if [[ -d $dir ]]; then #check if variable 1 is a directory
continue
else echo "Parameter One is NOT a directory" && exit 1
fi

if [[ $# -lt 3 ]]; then #Check there is enough command line parameters.
echo "NOT ENOUGH PARAMETERS" && exit 1
else filename=$dir/$txt && test -f $filename || touch $filename #see if variable 3 is a file that exhists or make it
fi

ls -R $dir | grep -EH $reg | cat >> $txt #user has to surround their reg input with quotes when running script???.


#NOTES: cat /dev/null > $txt ... ls -Ral $dir | grep -oHE $reg >> $txt
