#!/bin/bash
#P9: Write a shell script in which a list of filenames is taken as the input. If the file found in the list is called “hello”, then break the condition and print the index of its occurrence in the list.

index=1;

echo "The file 'hello' is found at argument index(es):"
for i in "$@"
do
    if [[ "$i" == "hello" || "$i" == "Hello" ]]; then
        echo "$index";
    fi

    ((index++));
    
done