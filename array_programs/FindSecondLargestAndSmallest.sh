#!/bin/bash -x

declare -i array
declare -i array1

#store 10 in variable since we want to use it later in loop
n=10
n1=$((n))
for i in `seq $n`
do
        array[i]=`shuf -i 100-999 -n 1`
done

first=0
second=0

#comparision to find second largest number from array
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


smallest=$((2**31))
second_smallest=$((2**31))

#comparision to find second smallest number from array
for (( i=1; i<n; i++ ))
do
      if [ ${array[i]} -lt $smallest ]
      then
	      second_smallest=$((smallest))
         smallest=$((${array[i]}))
      else
    	     if [ ${array[i]} -lt $second_smallest ] && [ ${array[i]} -ne $smallest ]
      	  then
	   	  second_smallest=$((${array[i]}))
           fi
      fi

done

echo ${array[@]}

if [ $second_smallest -eq $smallest ]
then
        echo "there is no 2nd smallest"
else
        echo "2nd smallest element in array is $second_smallest"
fi



