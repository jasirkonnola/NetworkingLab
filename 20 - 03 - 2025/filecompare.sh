#!/bin/bash

read -e -p "Enter the filename : " f1 f2
d=`cmp $f1 $f2`
