#!/bin/bash

declare -l month=$(date +%b)

case $month in
dec | jan | feb)
    echo "Winter"
    ;;
mar | apr | may)
    echo "Spring"
    ;;
jun | jul | aug)
    echo "Summer"
    ;;
sep | oct | nov)
    echo "Autumn"
    ;;
esac
