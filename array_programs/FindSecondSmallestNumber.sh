#!/bin/bash -x

declare -i array

#variable
n1=10
for i in `seq $n1`
do
	array1[i]=`shuf -i 100-999 -n 1`
done

#variables set to max value
smallest=$((2**31))
second_smallest=$((2**31))

#Comparision for finding second smallest number
for (( i=1; i<n1; i++ ))
do
	if [ ${array1[i]} -lt $smallest ]
	then
		second_smallest=$((smallest))
		smallest=$((${array1[i]}))
	else
		if [ ${array1[i]} -lt $second_smallest ] && [ ${array1[i]} -ne $smallest ]
		then
		second_smallest=$((${array1[i]}))
		fi
	fi
done

echo ${array1[@]}

if [ $second_smallest -eq $smallest ]
then
	echo "there is no 2nd smallest"
else
	echo "2nd smallest element in array is $second_smallest"
fi


