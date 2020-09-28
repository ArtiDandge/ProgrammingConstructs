#!/bin/bash -x 

echo "Input power"
read power
no=2
counter=0
max_ans=256
ans=1
while [ $power -ne $counter ]
do
        ans=`expr $ans \* $no`
        counter=`expr $counter + 1`
	echo $ans
	if [ $ans -ge $max_ans ]
	then
		echo "can not go further since upper limit set to 256 only"
		exit
	fi
done

echo "$no power of $power is $ans"
 



