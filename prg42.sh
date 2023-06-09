#!/bin/bash
if [ $# -ne 1 ]
then
   echo "You entered invalid number of arguments.. Usage $0 username"
else
  echo " Menu
  1.Add User
  2.Delete User
  3.List User Attributes
  4.Exit
  Read your choice 1-4 : "
  read num
  case $num in
  1) grep -w ^$1 /etc/passwd > /dev/null 2>$1
     if [ $? -ne 0 ]
     then
         useradd $1
         echo "Provide password : "
         read -sp pass
         echo "$pass" | passwd --stdin $1 > /dev/null 2>$1
     else
         echo "Cant create user.. it exists..Exiting.."
     fi
   ;;
  2) grep -w ^$1 /etc/passwd > /dev/null 2>$1
     if [ $? -eq 0 ]
     then
        userdel -r $1
     else
        echo "Cant delete user..Doesnt exists..Exiting.."
     fi
   ;;
  3) grep -w ^$1 /etc/passwd > /dev/null 2>$1
     if [ $? -eq 0 ]
     then
         grep -w ^$1 /etc/passwd
         chage -l $1
     else
        echo "Cant list user details..Doesnt exists..Exiting.."
     fi
   ;;
  4) echo "You have choosen exit option..exiting..."
   ;;
  *) echo "You have choosen invalid option..exiting..."
   ;;
 esac
fi
