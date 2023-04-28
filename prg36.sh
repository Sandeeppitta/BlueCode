#!/bin/bash
if [ $# -eq 2 ]
then
 echo "Found command line argument $1 and $2 for arithmetic operations" 
  num1=$1
  num2=$2
else
read -p "Enter first number:" num1
read -p "Enter second number:" num2
fi
echo"

      MENU
      1.ADD
      2.SUBTRACT
      3.DIVISION
      4.MULTIPLICATION
      5.EXIT"
read -p "Enter your choice [1..$]:" op
case $op in
1)
 res=`echo $num1+$num2|bc`
 echo "Addition of $num1 and $num2 :" $res
 ;;
2)
 res=`echo $num1-$num2|bc`
 echo "Subtraction of $num1 from $num2 :" $res
3)
 res=`echo $num1+$num2|bc`
 echo "Addition of $num1 and $num2 :" $res
 
