#!/bin/bash
#P19: Write a Bash shell script using `case` statements having four options: 1) Adding two numbers, 2) Subtracting them, 3) Multiplying them, and 4)Dividing them.

read -p "Enter two numbers separated by space: " x y;

printf "\nEnter your option:\n1. Additon\n2. Subtraction\n3. Multipication\n4. Division\n\nYour option: ";
read option;

case "$option" in
    1) sum=$((x+y));
    echo "The sum is $sum."
    ;;

    2) difference=$((x-y));
    echo "The difference is $difference."
    ;;

    3) product=$((x*y));
     echo "The product is $product."
    ;;

    4)  echo "The division is ";
        bc <<< "scale = 5; $x/$y";  #here-string; Used as bash does not support floating-point division.
    ;;

    *) echo "Invalid option!";
    exit 1
    ;;

esac