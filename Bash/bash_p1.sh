#!/bin/bash
#P1: Write a shell script to check whether the name passed as the first argument is the name of an existing file or directory.

if [ -f $1 ]; then
    echo "It is a file.";
elif [ -d $1 ]; then  
    echo "It is a directory.";
fi
