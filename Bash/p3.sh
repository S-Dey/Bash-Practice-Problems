#!/bin/bash
#P3: Write a shell script to create a file and a directory wherein the first argument passed in the terminal is used for creating the file and second one is used for creating the directory.

if [ ! -f "$1" ]; then
    touch "$1";
    echo "Successfully create file '$1' in $PWD";
else 
    echo "The file already exists in the current directory.";
fi

if [ ! -d "$2" ]; then
    mkdir "$2";
    echo "Successfully created directory '$2' in $PWD";
else 
    echo "The entered directory already exists in the current directory."
fi