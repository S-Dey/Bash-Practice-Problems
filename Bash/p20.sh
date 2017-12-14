#!/bin/bash
#P20: Fibonacci Series

read -p "Enter the range: " n;

first=0;
second=1;

echo -n "The Fibonacci series is: $first $second ";
for (( i=2; i<n; i++ ))
do
    third=$((first+second));
    first=$second;
    second=$third;
    echo -n "$third ";
done