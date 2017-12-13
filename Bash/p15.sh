#!/bin/bash
#P15: Write a shell script to input a string. If its length is lesser than 6 characters, then print “Name too short!”.


#Using expr
echo "Enter any string: "
read string

length=`expr "$string" : ".*"`

if [ $length -le 6 ]; then
    echo "Length is shorter than 6."
else
    echo "Error."
fi