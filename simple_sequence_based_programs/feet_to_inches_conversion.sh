#!/bin/bash

#program for feet to inches conversion
in=inches
ft=feet

echo "Enter inches:"
read n

ft=$(($n/12))

echo "$n inches is equal to $ft feets" 
