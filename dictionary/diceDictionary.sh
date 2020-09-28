#!/bin/bash -x

count=0;
i=1;
declare -A diceDictionary

#loop to store dice result into dictionary and find number who reaches conunt to 10
while [[ $count -lt 10 ]]
do
	num=$(( (RANDOM%6)+1 ))
	 diceDictionary["key$i"]=$num
	(( i++ ))

	count=$(printf '%s\n' "${diceDictionary[@]}" | sort | uniq -c | sort -r | head -1 | awk '{print $1}');
	number=$(printf '%s\n' "${diceDictionary[@]}" | sort | uniq -c | sort -r | head -1 | awk '{print $2}');
done

echo "Number $number reached $count times"
echo "Dictionary Keys : " ${!diceDictionary[@]}
echo "Dictionary values : " ${diceDictionary[@]}
echo "Total count of Dictionary : "${#diceDictionary[@]}
