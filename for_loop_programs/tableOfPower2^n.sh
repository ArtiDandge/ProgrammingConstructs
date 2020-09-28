#!/bin/bash -x 

read -p "enter number upto which you want table of power 2 " n

power=0
max_power=$((2**n))
#print table of power 2 upto 2^n
for i in `seq $n`
do

		powerTable=$((2**$i))
		echo $powerTable
done
