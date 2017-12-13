#!/bin/bash
#P8: Write a shell script to input two numbers, and using while loop check if the first number is greater than the second one, and print the larger one and increment it by 1. Repeat the process until the condition gets false.

#FLAG: This program is incomplete as of yet. Do not consider this as final solution.

echo "Kindly enter any two numbers: ";
read x;
read y;

while ((x>y))
do
    echo $x;
    ((x--));
done

