#!/bin/bash
#P7: Write a shell script to check if the input string exists as either a file or a directory. Also check if the input file is readable, writable, or executable, or a combination of those.

if [ -f "$1" ]; then
    echo "The input is a regular file.";
elif [ -d "$1" ]; then
    echo "The input is a directory.";
fi

printf "\nFile Properties:";
if [ -r "$1" ]; then
    echo "- Readable";
fi

if [ -w "$1" ]; then
    echo "- Writable";
fi

if [ -x "$1" ]; then
    echo "- Executable";
fi
