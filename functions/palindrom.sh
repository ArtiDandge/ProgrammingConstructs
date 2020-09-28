#!/bin/bash -x

# n , num, rev, rem are variables
read -p "Enter a number: " n
num=$n
rev=0
while [ $num -gt 0 ]; do
	rem=`expr $num % 10`
	rev=`expr $rev \* 10 + $rem`
	num=`expr $num / 10`
done
if [ $rev -eq $n ]; then
	echo "$n is a palindrome"
else
	echo "$n is not a palindrome"
fi
