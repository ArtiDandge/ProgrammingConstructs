#!/bin/bash

echo "enter a number"
read n

case $n in
	0) echo "Zero";;
	1) echo "One";;
	2) echo "Two";;
	3) echo "Three";;
	4) echo "Four";;
	5) echo "Five";;
	6) echo "Six";;
	7) echo "Seven";;
	8) echo "Eight";;
	9) echo "Nine";;
	*) echo "entered number is not a single digit number"
esac
