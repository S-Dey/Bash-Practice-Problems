#!/bin/bash
#P18: To check whether a number is odd or even

read -p "Enter any number: " x;


if ((x%2 == 0))		#Otherwise, we can also do [[ $((x%2)) == 0 ]].
then 
	echo "It is even.";
else 
	echo "It is odd.";
fi