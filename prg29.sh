#!/bin/bash
#Demonstarte infinite while loop
#use braek key word to break the loop
count=1 #counter initialization
>t.out #Creat empty file
#while true  
while : #same as the above line
do
  read -p "Enter the text.. End this with "stop" word:" t1
  if [ $t1=stop ]
  then 
     echo "You asked me to stop.. Thank you."
     echo "You entered the below data:"
     cat t.out #print the file content before you exit.
     break 
     #break statement break the loop; in this case while loop.
  fi
  #insert the read data into t.out
  echo $t1>>t.out
  echo "Continuing the loop... now in iteration $count"
  ((count++)) #increment the counter to print number of iteratives
done
