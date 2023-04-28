#!/bin/bash
#Read the variable from the keyboard till you hit Enter Key(blank variable)
v=1 #
while [ -n "$v" ] #variable length must not zero
do
 echo "Enter the text. End with Enter key..:"
 read v
 if [ -n "$v" ]
 then 
    echo "You entered $v"
 else 
    echo "Exiting now.."
 fi

done
