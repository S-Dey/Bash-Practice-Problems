#!/bin/bash
#P11: Write a shell script to print the files that are “writable” in a certain directory, the name of which is passed as an argument in the terminal.

if [ -d "$1" ]; then
    cd "$1";    #Navigating to directory whose name is passed as the first argument in the terminal.

    echo "All the files which are writable in the directory '$1' are:";
    for i in *
    do 
        if [ -w "$i" ]; then
            echo "$i";
        fi
    done

else 
    echo "The directory does not exist.";
fi