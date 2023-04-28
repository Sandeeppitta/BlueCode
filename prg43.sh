#!/bin/bash
read -p "Enter the path of the file or dir:" path
if
ls -l  $path| grep ^-
then
  echo "you entered path is ordinary file"
elif
ls -ld  $path | grep ^d
then
  echo "you enetered path is directory"
else
ls -l $path | grep ^l
   echo "you entered path is linked file"
fi
#End
