#!/bin/bash -x  

read -p "enter number of which you want harmonic number: " n

if [ $n -gt 0 ]
then
	echo "Harmonic series:"
	harmonic_sum=0
	#loop for finding harmonic series and harmonic sum
	for (( i=1; i<=$n; i++ ))
	do
	
		harmonic_series=`echo $i | awk '{ print 1/$0 }'`
		echo  1/$i
		harmonic_sum=`echo $harmonic_sum $harmonic_series | awk '{ print $1+$2 }'`
	done

	echo "Harmonic Number of $n : $harmonic_sum"
fi
