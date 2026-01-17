#!/bin/bash

if [ $# -eq 0 ]
then
	echo "please provide a file"
else
	if [ -f $1 ]
	then
		sed 's/,/:/' $1 > ${1//csv/txt}
	else
		echo "file doesn't exist"
	fi
fi