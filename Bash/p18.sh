#!/bin/bash
#P18: To check whether a number is odd or even

echo "Enter any number: ";
read x;


if [[ $x % 2 -eq 0 ]]
then 
	echo "It is even.";
else 
	echo "It is odd.";
fi