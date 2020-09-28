#!/bin/bash -x 

#variables
low=1
count=0

while [ $low -eq  1 ]
do
echo "enter lower limit, greater than 1 "
read low
done

echo "enter upper limit "
read upper

#loop for finding number of primes in given rang  
for num in `seq $low $upper`
do
ret=$(factor $num | grep $num | cut -d ":" -f 2 | cut -d " " -f 2)

if [ "$ret" -eq "$num" ];
then
echo "$num is prime"
((count++))
fi
done

echo -e "\n There are $count number of prime numbers"
