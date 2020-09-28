#!/bin/bash -x 
echo "Enter the number"
read n

#function to check number is primee or not
function prime
{
	for((i=2; i<=n/2; i++))
	do
  		if [ $((n%i)) -eq 0 ]
  		then
    			echo "$n is not a prime number"
    		exit
  		fi
	done
	echo "$n is a prime number"
}

#invoking prime function and storing result in variable r
r=`prime $number`

#just for code seperation 
echo "----------------------------"

number=$n
reverse=0
#function to check number is palindrom or not
function palindrom {
	while [ $n -gt 0 ]
	do
		a=`expr $n % 10 `
		n=`expr $n / 10 `
		reverse=`expr $reverse \* 10 + $a`
	done
	echo $reverse
	if [ $number -eq $reverse ]
	then
   	echo "$n is palindrome number"
	else
		echo "$n is not palindrome number"
	fi
}

#palindrom function invoke and store result in variable r1
r1=`palindrom $n`

echo -e "conclusion: $r \n  $r1"
