#!/bin/bash -x 

declare -i array;
count=0;

#store values in array
array=(5 -1 4 -3 1)


size=${#array[@]};
flag=1;

for (( i=0; i<$size; i++ ))
do
	for (( j=$(( i+1 )); j<$size; j++ ))
	do
		for (( k=$(( j+1 )); k<$size; k++ ))
		do
			if [ $(( array[i] + array[j] + array[k] )) -eq 0 ]
			then
				echo "elements whose sum is zero are: ${array[i]}, ${array[j]}, ${array[k]}"
				(( flag=1 ))
			fi
		done
	done	
done

