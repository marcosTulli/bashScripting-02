#!/bin/bash

function create_directory() {
    declare -l directory
    # -p makes it a prompt.
    read -p "Enter a directory name: " directory
    mkdir $directory
}

while true; do
    clear
    echo "Choose an option:"
    echo "1: list users"
    echo "2: create directory"
    echo "3: quit"
    # -s slient (not displayed)
    read -sn1
    case "$REPLY" in
    1) who ;;
    2) create_directory ;;
    3) exit 0 ;;
    esac
    read -n1 -p "Press any key to continue"
done
