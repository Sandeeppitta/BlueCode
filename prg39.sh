#!/bin/bash
echo -e "\tSystem Information:-"
echo -e "\t********************"
echo "
  1.Display your working kernel name
  2.Display your shell name
  3.Login name
echo -e "\t******************"
echo -n "Enter your options:" ;read n
case $n in
1) echo "Working kernel name is $(uname)
   version is $(uname -r)
   ;;
2) echo "Working shell  is $SHELL
   version is $BASE_VERSION"
   ;;
3)echo "My login name:$LOGNAME and login id is $UID" ;;
esac
