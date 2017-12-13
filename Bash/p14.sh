#!/bin/bash
#P14: Write a shell script to check if a file exists in the entered directory.

echo "Enter the directory name where you want to search the file: ";
read dirname;

echo "Enter the filename which you want to search: ";
read filename;

flag=1;

if [[ -d "$dirname" ]]; then
    
    cd "$dirname";  #Moving to the desired directory to check whether the file exists over there or not.

    for i in *
    do
        if [[ "$i" == "$filename" && -f "$i" ]]; then
            flag=0;
        fi            
    done

    if [ "$flag" -eq 0 ]; then
        echo "The file exists.";
    else
        echo "The file does not exist.";
    fi    

else 
    echo "The entered directory does not exist."
fi