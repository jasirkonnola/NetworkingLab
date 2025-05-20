#!/bin/bash

read -p "Enter the file name: " fname

if [ ! -f "$fname" ]; then
    echo "$fname not found!"
    exit 1
fi

lines=$(wc -l < "$fname")
words=$(wc -w < "$fname")
chars=$(wc -c < "$fname")

echo "File: $fname"
echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"
