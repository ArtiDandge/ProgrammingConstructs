#!/bin/bash -x

#script for finding repeated digit in number
declare -i repeat
declare -i num


echo "how many numbers you want to generate ? "
read n

for i in `seq $n`
do
	num[i]=`shuf -i 0-100 -n 1`
done

#list randomly generated 10 number ans store in numbers
numbers=$(for i in ${num[@]}; do i=$((RANDOM%100)); echo -e "\n" $i; done )

#iterate over randomly generated number and find number repeated digti and store in array num1
num1=$(for i in ${numbers[@]}; do echo -e "\n" $i; done | grep "\([0-9]\)\\1")

echo "Random number "${numbers[@]}
echo "Array of repeated digit number contains "${num1[@]}
 
