#!/bin/bash -x
declare -A bday
declare -A sameMonth
k=1
n=50
for i in `seq $n` 
do
	#bday dictionary  to store ramdon 50 dates between year 92 to 93. 
	bday["key$k"]=$(shuf -n1 -i$(date -d '1992-01-01' '+%s')-$(date -d '1993-12-31' '+%s')\
 	| xargs -I{} date -d '@{}' '+%d/%m/%Y'| awk -F / '{print $1 "/" $2}')
	(( k++ ))

	#store duplicated date and month in another dictionary that is sameMonth
	sameMonth=$(printf '%s\n' "${bday[@]}"|awk '!($0 in seen){seen[$0];next} 1')

done


#print dictionary keys
echo "keys of dictionary " ${!bday[@]}
echo "----------------------------------------------------------------------------"
#print random 50 dates
echo "random dates " ${bday[@]}
echo "----------------------------------------------------------------------------"
#print repeated same date and month
echo "Individuals same birthday and months occure one than one dictionary :" ${sameMonth[@]}
