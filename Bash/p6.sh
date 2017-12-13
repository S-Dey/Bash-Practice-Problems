#!/bin/bash
#P6: Write a shell script to print the total number of files and directories in a certain directory,whose name is passed as an argument in the terminal.

countfiles=0;
countdirs=0;

#Changing directory and checking if it exists.


for files in *
do 
    if [ -f "$files" ]; then
        ((countfiles++));
    fi

    if [ -d "$files" ]; then
        ((countdirs++));
    fi
done

printf "Number of:\n    Files = %d\n    Directories = %d\n" "$countfiles" "$countdirs";