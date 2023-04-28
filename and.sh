#!/bin/bash
read -p "Enter the first number" num1
read -p "Enter the second number" num2
read -p "Enter the third number" num3
if test $num1 -gt $num2 -a $num1 -gt $num3
then 
   echo $num1 is big
fi
