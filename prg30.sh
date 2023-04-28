#!/bin/bash
#Create users .. using while loop
#
while :
do
 read -p "Enter username to add(use 'stop' to exit):" u1
 if [ $u1 = stop ] #out if begins
 then 
   break
 else
 #search
 grep -w ^$u1 /etc/passwd > /dev/null 2>&1
 if [ $? != 0 ]
 then
  useradd $u1
  #set 
  echo "$u1" | passwd --stdin $u1 > /dev/null 2>&1
 else
  echo "cant create user.. $1 user exists...continue with next user"
fi
fi #Outer if 
done #While close
