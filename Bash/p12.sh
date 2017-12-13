#!/bin/bash
#P12: Write a shell script to print the list of subdirectories in a certain directory.

count=0;

if [ -d "$1" ]; then
    cd "$1";    #Navigating to directory whose name is passed as the first argument in the terminal.

    echo "All the subdirectories available in the directory '$1' are:";
    for i in *
    do 
        if [ -d "$i" ]; then
            echo "$i";
            ((count++));    #To show an error if there are no subdirectories available.
        fi
    done

    if [ "$count" -eq 0 ]; then
        echo "<No directories available>";
    fi

else 
    echo "The directory does not exist.";
fi