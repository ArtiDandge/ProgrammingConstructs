#!/bin/bash -x

read -p "enter number" number

#variable
factorial=1

for ((i=1; i<=number; i++))
do
	factorial=$[ $factorial * $i ]
	
done

echo "factorial of $number is $factorial "
