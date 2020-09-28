#!/bin/bash -x

read -p "enter number upto which you want harmonic series: " n

if [ $n -gt 0 ]
then
#variables
harmonic_sum=0
sum=0

for (( i=1; i<=$n; i++ ))
do
        Harmonic_series=1/$i;
        echo $Harmonic_series;
        Harmonic_sum+=`awk 'BEGIN{print("%0.2f", 1/'$i')}'`
done

echo -e "$harmonic_sum"
fi




