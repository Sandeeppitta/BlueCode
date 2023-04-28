#!/bin/bash
read -p "Enter the username:" name
grep -w ^$name /etc/passwd>/dev/null
if [ $? == 0 ]
then
 echo "user exist and user should be locked"
 usermod -L $name
else
 echo "user dosen't exist"
fi
