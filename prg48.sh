#!/bin/bash
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
read -p "Enter the third number:" num3
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
 echo "The first number is bigger number"
  if [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
  then
   echo "The second number is bigger number"
  fi
else
   echo "the third number is bigger number"
fi
