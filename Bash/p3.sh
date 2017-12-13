#!/bin/bash
#P3: Write a shell script to create a file and a directory wherein the first argument passed in the terminal is used for creating the file and second one is used for creating the directory.

if [ -f "$1" ]; then 
    echo "The file '$1' already exists in the working directory.";
elif touch "$1"; then
    echo "Successfuly created the file '$1' in '$PWD'.";
fi

if mkdir "$2"; then
    echo "Successfully created directory '$2' inside the working directory!";
fi