#!/bin/bash
#P5: Write a shell script which checks the total number of arguments passed in the terminal. If the argument count is greater than 5, then display “Too many arguments!” on the console output.

if [[ "$#" -gt 5 ]]; then
    echo "Too many arguments!";
else 
    echo "Great!";
fi