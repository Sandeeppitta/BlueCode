#!/bin/bash
#print the content of a file
#Read the filename from keyboard
read -p "Enter the absolute path of the filename:" fname
#Check if file exists(-e option) and its a regular file (-f name)
#hi
count=0
if [ -e $fname ] && [-f $fname ]
then
   #
   #
   exec < $fname
   #the 
   #
   while read data   #where data is the variable name. Entire line is assigned to variable data
   do
     echo $data
     ((count++)) #
   done #
   echo "Number line in the file $fname: $count"
else
   echo "File $fname does not exists.. Try again"
fi
