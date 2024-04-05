#!/bin/bash

declare -l DIR
# -n don't do a carriage return at the end of the statement.
echo -n "Enter a directory to create: "
read DIR
if [[ -e $DIR ]]; then
    echo "$DIR aldready exists"
    exit 1
else
    if [[ -w $PWD ]]; then
        mkdir $DIR
        exit 0
        # se
        echo "You don't have permission to write in $PWD"
        exit 2
    fi
fi
