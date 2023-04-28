#!/bin/bash
#Demonstrate array variables
declare -a a 
read -p "Enter first value:" a[0]
read -p "Enter second value:" a[1]
read -p "Enter third value:" a[2]
read -p "Enter fourth value:" a[3]
echo "You entered ${a[@]}"
echo "the first value is : ${a[0]}"
echo "size of the array is ${#a[@]}"
#End
