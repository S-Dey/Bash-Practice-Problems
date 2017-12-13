#!/bin/bash
while read -r a b; do
    echo $a $b
done < text.txt