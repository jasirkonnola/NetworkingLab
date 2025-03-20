#!/bin/bash

read -e -p "Enter the filename :" filename
if [[ -r $filename && -w $filename && -x $filenmae ]]; then
	echo "the file have read,write,execute permission."
elif [[ -r $filename && -w $filename ]]; then
	echo "the file have read,write permission."
else
	echo "no permission"
fi
