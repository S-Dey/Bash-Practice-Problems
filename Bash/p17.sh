#!/bin/bash
#P17: Write a shell script to return the last modification time of a file whose name is passed as an argument in the terminal. 

if [ -f "$1" ]; then
    set -- "$(ls -l "$1")";         #Set positional parameters ($0, $1, $2,...) for the output of `ls` command.
    echo "$0 $1 $2 $3 $4 $5 $6 $7 $8 $9";
else
    echo "The entered file does not exist.";
fi