#!/bin/bash

echo "pdf file name : "$1
echo "png file name : "$2

if [ -s $1 ]; then
	if [ -f $2 ]; then
		echo "png file name : "$2" is already existed"
	else
		gs -q -sDEVICE=pngalpha -sOutputFile=$2 -r144 $1
	fi
else
	echo "pdf file name : "$1" is not existed"
fi
