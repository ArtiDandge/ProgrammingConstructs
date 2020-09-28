#!/bin/bash -x 

dice1=$(( (RANDOM%6)+1))
dice2=$(( (RANDOM%6)+1)) 
add_nos=$(($dice1+$dice2))
echo "Two random dice numbers: ( $dice1, $dice2 )"
echo "Additions of dice numbers: $add_nos"
