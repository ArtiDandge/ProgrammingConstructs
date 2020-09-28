#!/bin/bash -x

#initially headcount and tailcount is set to zero. they will increament accordingly in while loop
headcount=0
tailcount=0

while true
do
#based on reminder( 0 or 1 ) head or tail will occur
FLIP=$(($((RANDOM%10))%2))
if [ $FLIP -eq 1 ];then
        ((headcount++))
	if [ $headcount -eq 11 ]
		then 
		echo "Head wins"
		exit
	fi
else
        ((tailcount++))
	if [ $tailcount -eq 11 ]
                then
                echo "Tail wins"
                exit
        fi

fi
done

