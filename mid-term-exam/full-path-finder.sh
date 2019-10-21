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
# I AM NOT SURE IF YOU WANTED US TO CLEAR THE FILE FIRST AT THIS POINT.
# so i went to some trouble to make sure either was possible.
read -r -p "Do you want to clear the text file beforehand? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
 echo "Yes" && cat /dev/null > $txt
 ;;
    [nN][oO]|[nN])
 echo "No"
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac

ls -R $dir | grep -oE "$reg" | cat >> $txt #user has to surround their reg input with quotes when running script???.


#NOTES: cat /dev/null > $txt ... ls -Ral $dir | grep -oHE $reg >> $txt
