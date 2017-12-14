#!/bin/bash
#P21: Write a shell script to find the factorial of a number.

read -p "Enter a number: " num;
factorial=1;

for ((i=num; i>0; --i))
do
    factorial=$((factorial * i));
done

echo "$num! = $factorial";