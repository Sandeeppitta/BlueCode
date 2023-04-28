#!/bin/bash
#Demonstrate reading an array value
i=0
while true
do
 read -p "Enter the value[End with Enter key]:" val
 if [ -z $val ] #check if the variable is of zero length which mean an enter key(blank input) 
 then
    break
 else
 a[$i]=$val
 ((i++))
 fi
done
  echo "The array is: ${a[@]}"
#End
