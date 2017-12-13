#!/bin/bash
#P6: Write a shell script to print the total number of files and directories in a certain directory,whose name is passed as an argument in the terminal.

countfiles=0;
countdirs=0;

#Changing directory and checking if it exists.
if [ -d "$1" ]; then
    cd "$1";

    for files in *
    do 
        if [ -f "$files" ]; then
            ((countfiles++));
        fi

        if [ -d "$files" ]; then
            ((countdirs++));
        fi
    done

    printf "In the directory '$1', number of:\n    files = %d, and\n    directories = %d\n" "$countfiles" "$countdirs";
else 
    echo "The directory does not exist. Make sure to create it first with command 'mkdir'.";

fi