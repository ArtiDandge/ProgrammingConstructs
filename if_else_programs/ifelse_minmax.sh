#!/bin/bash -x

#Enter 3 Numbers do following arithmetic operation and 
#find which result is maximum and minimum

read -p "enter 3 random numbers" a b c

result1=$((a+b*c))
result2=$((a%b+c))
result3=$((c+a/b))
result4=$((a*b+c))


if [ $result1 -gt $result2 ] && [ $result1 -gt $result3 ] &&  [ $result1 -gt $result4 ];
	then
		echo "result1 is maximum of all i.e. $result1" 
elif [ $result2 -gt $result1 ] && [ $result2 -gt $result3 ] &&  [ $result2 -gt $result4 ];
	then
		echo "result2 is maximum of all i.e. $result2"
elif [ $result3 -gt $result1 ] && [ $result3 -gt $result2 ] &&  [ $result3 -gt $result4 ];
	then
      echo "result3 is maximum of all i.e. $result3";
else
      echo "result4 is maximum of all i.e. $result4"
fi


