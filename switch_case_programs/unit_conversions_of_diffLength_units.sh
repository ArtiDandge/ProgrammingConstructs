#!/bin/bash

echo -e "(input formate: value source_unit to destination_unit ) \n ex. 'value feet to inches' or vise-versa or 'value feet to meter' or vise-versa"
read value src_unit to dest_unit
echo $value $src_unit $dest_unit

case "$src_unit to $dest_unit" in
	"inches to feet")
		new_value=`awk 'BEGIN{printf("%0.2f",'$value' / 12)}'`
		echo "$value inches is equal to $new_value feet";;

	"feet to inches")
		new_value=`awk 'BEGIN{printf("%0.2f",'$value' * 12)}'`
		echo "$value feet is equal to $new_value inches";;
		
	"feet to meter")
		new_value=`awk 'BEGIN{printf("%0.2f",'$value' * 0.3048)}'`
		echo "$value feet is equal to $new_value meter";;

	"meter to feet")
		new_value=`awk 'BEGIN{printf("%0.2f",'$value' / 0.3048)}'`
		echo "$value meter is equal to $new_value feet";;

	*)
		echo "I do not know how to convert this. Please correct the input format";;
esac
