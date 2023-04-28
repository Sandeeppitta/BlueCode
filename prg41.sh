#!/bin/bash
if [ $# -ne 1 ]
then
 echo "You entered invalid number of arguments.. usage $0 username"
else
 echo "menu
 1. add user
 2. delete user
 3. list user attributes
 4. exit
 read your choice 1-4:"

read num
case $num in
1)
  grep -w ^$1 /ect/passwd>/dev/null 2>&1
  if [ $? -ne 0 ]
  then
   useradd $1
 echo "provide the passwd:"
 read -sp pass
 echo "$pass" | passwd --stdin $1 > /dev/null 2>&1
else
 echo "cant create user.. it exists... existing"
 fi
;;
2)
 grep -w^$1 /ect/passwd>/dev/null 2>&1
 if [ $? -eq 0 ]
 then
  userdel -r $1
else
 echo "cant delete user.. it doesnot exist... existing"
fi
;;
3)
 grep -w^$1 /ect/passwd>/dev/null 2>&1
 if [ $? -eq 0 ]
 then
   grep -w ^$1 /etc/passwd
   chage -l $1
else
 echo "cant list usere details.. it doesnot exist... existing"
fi
;;
4)
  echo "you have choosen exit ooption...."
;;
*)
  echo "you have choosen invalid ooption...."
;;
esac
fi
