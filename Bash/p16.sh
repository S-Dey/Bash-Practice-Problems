#!/bin/bash
#P16: Write a shell script which uses expr to extract the parent directory from the absolute pathname of a file given in the input.

echo "Enter the absolute path of the file: ";
read filepath;

parentdir=$(expr "$filepath" : '\(.*\)/.*');

echo "The extracted parent directory is: ";
echo "$parentdir";