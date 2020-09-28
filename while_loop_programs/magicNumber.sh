#!/bin/bash -x

number=$[($RANDOM % 100) +1]
guesses=1
echo -n -e "Suppose user has thought number 1 and 100 in his mind .\n Now enter number that you are guessing:"

#read number until guess is correct
while read guess; do

part_number=$((number/2))

if [ $number -lt $part_number ]
then
        echo -e "number is less than $part_number,\n so try guessing number less than $part_number"
else
        echo -e "number is greater than $part_number,\n so try guessing number greater than $part_number"
fi


if   [[ $guess -eq $number ]]; then
break;  
else
echo 
#exit when number and guess are equal   
if [[ $guess -gt $number ]]; then 
echo -n "Sorry, your guess is too high. New guess:"
elif [[ $guess -lt $number ]]; then
echo -n "Sorry, your guess is too low. New guess:"
fi      
fi
guesses=$((guesses+1))

done
echo
echo "Yeah.. You guessed correct number in $guesses attempts."
