#!/bin/bash -x 

echo -e "(input formate: value source_unit to destination_unit ) \n ex. 'value C to F' or 'value F to C' "
read value src_unit to dest_unit
#echo $value $src_unit $dest_unit

function temperature
{
case "$src_unit to $dest_unit" in
        "C to F")
		#Celsius to  fahrenheit conversion
                new_value=`awk 'BEGIN{printf("%0.2f",('$value' * 9/5)+32)}'`
                echo "$value Celsius is equal to $new_value degree fahrenheit";;

        "F to C")
		# fahrenheit to Celsius
                new_value=`awk 'BEGIN{printf("%0.2f", ('$value'-32)*5/9)}'`
                echo "$value fahrenheit is equal to $new_value degree celsius";;

        *)
                echo "I do not know how to convert this. Please correct the input format";;
esac

}

#invoke temperature function
temperature  $value $src_unit $dest_unit
