#!/bin/bash

counter=1
number=0
sum=0
for a in 1 2 3 4 5 
do

	number=$(((RANDOM%88)+10))
	count=$((counter++))
	sum=$(($sum+$number))
	avg=$(($sum/count))
	echo $number
done
 
echo "Addition of random numbers: $sum"
echo "Average of random numbers: $avg"
