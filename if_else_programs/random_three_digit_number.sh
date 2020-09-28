#!/bin/bash -x 

#generate 5 random numbers using shuf
n1=`shuf -i 100-999 -n 1`
n2=`shuf -i 100-999 -n 1`
n3=`shuf -i 100-999 -n 1`
n4=`shuf -i 100-999 -n 1`
n5=`shuf -i 100-999 -n 1`


if [ $n1 -lt $n2 ] && [ $n1 -lt $n3 ] && [ $n1 -lt $n4 ] && [ $n1 -lt $n5 ];
        then
					 echo "minimum of all is $n1"
 elif [ $n2 -lt $n1 ] && [ $n2 -lt $n3 ] && [ $n2 -lt $n4 ] && [ $n2 -lt  $n5 ];
        then
                echo "minimum of all is $n2"
 elif [ $n3 -lt $n1 ] && [ $n3 -lt $n2 ] && [ $n3 -lt $n4 ] && [ $n3 -lt $n5 ];
        then
      		echo "minimum of all is $n3"
 elif [ $n4 -lt $n1 ] && [ $n4 -lt $n2 ] && [ $n4 -lt $n3 ] && [ $n4 -lt $n5 ];
        then
            echo "minimum of all is $n4";

else
      echo "minimum of all is $n5"
fi

echo "-----------------"

if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ] && [ $n1 -gt $n4 ] && [ $n1 -gt $n5 ];
        then
                echo "maximum of all is $n1"
 elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ] && [ $n2 -gt $n4 ] && [ $n2 -gt  $n5 ];
        then
                echo "maximum of all is $n2"
 elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ] && [ $n3 -gt $n4 ] && [ $n3 -gt $n5 ];
        then
            echo "maximum of all is $n3"
 elif [ $n4 -gt $n1 ] && [ $n4 -gt $n2 ] && [ $n4 -gt $n3 ] && [ $n4 -gt $n5 ];
        then
            echo "maximum of all is $n4";

else
      echo "maximum of all is $n5"
fi


