#!/bin/bash
#This script find if the given user exists in this system  
read -p "Enter the username:" name
grep -w ^$name /etc/passwd > /dev/null
if [ $? -eq 0 ]
then 
   echo "User $name found in the system. Could not Create.. Exiting"
else
   read -p "Enter the password for user $name :" pass
   useradd $name 
   echo "$name:$pass"|chpasswd
   echo -e "\nUser $name created.."
fi
#script Ends here.
