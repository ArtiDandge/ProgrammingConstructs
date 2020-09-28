#!/bin/bash -x 

declare -i array

#variable
n=10
for i in `seq $n`
do
	array[i]=`shuf -i 100-999 -n 1`
done

#variables
first=0
second=0

#comparision for finding 2nd largest
for (( i=1; i<n; ++i ))
do
	if [ $first -lt ${array[i]} ]
	then
	second=$((first))
	first=$((${array[i]}))
	else
		if [ ${array[i]} -gt $second ] && [ ${array[i]} -ne $first ]
		then
		second=$((${array[i]}))
		fi
	fi
done

echo ${array[@]}

if [ $second -eq $first ]
then
	echo "there is no 2nd largest element"
else
	echo "2nd largest element in array is $second"
fi


