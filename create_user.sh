#!/bin/bash

function create_user () {
	echo "$1"
	if ( getent passwd $1 > /dev/null ) ; then
		echo "$1 already exists";
		return 1;
	else
		echo "Creating user $1";
		sudo useradd $1;
		return 0;
	fi
}

create_user $1
