#!/bin/bash

dir=$1
cpdir=$2

if [[ -d $1 ]]; then 
continue
else echo "Parameter One is NOT a directory" && exit 1
fi
if [[ -d $2 ]]; then
continue
else echo "Parameter Two is NOT a directory" && exit 1
fi
echo "passed both tests"

# first try: ls -Ral $1 | grep -oE [A-Za-z0-9]*.conf$" | xargs cp -tar $2

# cp --backup=existing -S .bak $1/*.conf -t $2

for f in *.conf; do cp -R -- "$f" "$2/$f.bak"; done

echo "placeholder final reached"

