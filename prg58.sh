#!/bin/bash
#script to create user and set password for the same
read -p "Enter the username:" name
grep -w ^$name /etc/passwd > /dev/null
if [[ $? -eq 0 ]]
then
  echo "User $name found in the system. could not create..Exiting"
else
   read -sp "Enter the password for user $name :" pass
   useradd $name
   echo "$name:$pass"|chpasswd
   echo -e "\nUser $name create.."
fi
#if End here
#End of the script
