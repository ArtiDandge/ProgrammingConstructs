#!/bin/bash -x

read -p "enter number" number
count=`echo $number | grep -oE [[:digit:]] | wc -l`

case $count in
	7) 
 		unit=$((number%10))
      		ten=$(((number/10)%10))
      		hundred=$(((number/100)%10))
      		thousand=$(((number/1000)%10))
      		tenthousand=$(((number/10000)%10))
      		lac=$(((number/100000)%10))
		tenlac=$((number/1000000))
		echo "unit " $unit
      		echo "ten " $ten
      		echo "hundred" $hundred
      		echo "thounsand " $thousand
      		echo "tenthousand" $tenthousand
		echo "lac " $lac
		echo "tenlac " $tenlac;;
	
	6)
		unit=$((number%10))
      		ten=$(((number/10)%10))
      		hundred=$(((number/100)%10))
      		thousand=$(((number/1000)%10))
      		tenthousand=$(((number/10000)%10))
      		lac=$(((number/100000)%10))
		echo "unit " $unit
      		echo "ten " $ten
      		echo "hundred" $hundred
      		echo "thounsand " $thousand
      		echo "tenthousand" $tenthousand
      		echo "lac " $lac;;

	5)
		unit=$((number%10))
		ten=$(((number/10)%10))
		hundred=$(((number/100)%10))
		thousand=$(((number/1000)%10))
		tenthousand=$((number/10000))
		echo "unit " $unit
		echo "ten " $ten
		echo "hundred" $hundred
 		echo "thounsand " $thousand
		echo "tenthousand" $tenthousand;;
	4) 
		unit=$((number%10))
	   	ten=$(((number/10)%10))
      		hundred=$(((number/100)%10))
      		thousand=$(((number/1000)%10))
      		tenthousand=$((number/10000))
      		echo "unit " $unit
      		echo "ten " $ten
    		echo "hundred" $hundred
     		echo "thounsand " $thousand;;

	3)
		unit=$((number%10))
      		ten=$(((number/10)%10))
      		hundred=$(((number/100)%10))
		echo "unit " $unit
      		echo "ten " $ten
      		echo "hundred" $hundred;;

	2)
		unit=$((number%10))
      		ten=$(((number/10)%10))
    		echo "unit " $unit
      		echo "ten " $ten;;

	1)
		unit=$((number));;
	
	*)
		echo "enter number upto 7-digit ";;

esac
