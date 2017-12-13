#!/bin/bash
#P4: Write a shell script to create a file inside a directory. The filename should be passed as the first argument, and the directory name as the second one.

echo "Enter the directory name in which you want to insert the file: ";
read dirname;

echo "Enter the filename which you want to put inside the directory '$dirname': ";
read filename;

if [ -d "$dirname" ]; then  #Check if the directory already exists.
    cd "$dirname";
    if touch "$filename"; then
        echo "Successfully created '$filename' inside '$dirname'!";
    fi
else 
    echo "The directory '$dirname' does not exist. Do you want to create it?";
    read option;
    if [[ $option == y* || $option == Y* ]]; then  #Using wildcards as the user might enter "yo" for "yes".
        if mkdir "$dirname"; then
            echo "Successfully created the directory!";
        fi
    fi
fi