#!/bin/bash -x
declare -i array 

#variable
n=10

for i in `seq $n`
do
        array[i]=`shuf -i 100-999 -n 1`
done
#echo ${array[@]}

sorted=$(for i in ${array[@]};do echo $i; done | sort)
second_smallest=`echo $sorted | awk '{print($2)}'`
echo "Second smallest element $second_small"
second_largest=`echo $sorted | awk '{print($9)}'`
echo "Second largest element $second_largest"
