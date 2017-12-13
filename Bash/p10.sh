#!/bin/bash
#P10: Write a shell script which takes a name as an argument. If it begins with ‘f’ or ‘F’, then create a file with the input name; if it begins with ‘d’ or ‘D’, then create a directory with the input name. Otherwise, print an error message.

if [[ $1 == f* || $1 == F* ]]; then
    if touch "$1"; then
        echo "File successfully created!";
    fi
elif [[ $1 == d* || $1 == D* ]]; then
    if mkdir "$1"; then
        echo "Directory successfully created!"
    fi
else 
    echo "Bye!";
fi