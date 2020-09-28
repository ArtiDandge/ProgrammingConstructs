#!/bin/bash -x

read -p "enter 5 digit number" number
count=`echo $number | grep -oE [[:digit:]] | wc -l`

if [ $count -eq 5 ];
	then
		unit=$((number%10))
      		ten=$(((number/10)%10))
      		hundred=$(((number/100)%10))
      		thousand=$(((number/1000)%10))
      		tenthousand=$((number/10000))
      		echo "unit " $unit
      		echo "ten " $ten
      		echo "hundred" $hundred
      		echo "thounsand " $thousand
      		echo "tenthousand" $tenthousand
elif [ $count -eq 4 ];
	then
		unit=$((number%10))
      		ten=$(((number/10)%10))
      		hundred=$(((number/100)%10))
      		thousand=$(((number/1000)%10))
 		echo "unit " $unit
      		echo "ten " $ten
      		echo "hundred" $hundred
      		echo "thounsand " $thousand
elif [ $count -eq 3 ];
	then
      		unit=$((number%10))
      		ten=$(((number/10)%10))
      		hundred=$(((number/100)%10))
      		echo "unit " $unit
      		echo "ten " $ten
      		echo "hundred" $hundred
elif [ $count -eq 2 ];
   	then
      		unit=$((number%10))
      		ten=$(((number/10)%10))
      		echo "unit " $unit
      		echo "ten " $ten
elif [ $count -eq 1 ];
   	then
      		unit=$((number))
      		echo "unit " $unit
else
	echo "enter number upto 5 digit"
fi









