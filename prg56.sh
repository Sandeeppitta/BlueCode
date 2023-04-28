#!/bin/bash
read -p "Enter the first number" num1
read -p "Enter the second number" num2
#Test if te first number is big
if ((num1>num2))
then
    echo "Given number $num1 is bigger than $num2"
else
    echo "$num1 is not bigger than $num2"
fi
#End
