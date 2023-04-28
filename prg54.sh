#!/bin/bash
read -p "Enter the first number:" x
read -p"Enter the second number:" y
echo "Arithmetic Operations:"
result=`expr $x + $y`
echo "The addition is $result"
result=`expr $x - $y`
echo "The subtraction is $result"
result=`expr $x \* $y`
echo "The Multiplication is $result"
result=`expr $x % $y`
echo "The Modulus is $result"
result=`expr $x / $y`
echo "The Division is $result"
#End
