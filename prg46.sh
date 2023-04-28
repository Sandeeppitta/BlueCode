#!/bin/bash
while true;
do
echo "MENU"
echo "P.Print PVs"
echo "V.Print VGs"
echo "L.Print LVs"
echo "B.Print Block Devices"
echo "OS.Print OS Version"
echo "E.Exit"
read -p "Enter the option from menu:" opt
case $opt in
P)
  echo "printing pvs in system"
   pvdisplay
  ;;
V)
    echo "printing vgs in system"
     vgdisplay
     ;;
L)
    echo "printing lvs in system"
    lvdisplay
    ;;
B)
    echo "printing block dev  in system"
    lsblk
    ;;
OS)

  echo "printing kernel in system"
  uname -r
  ;;

*)
   echo "invalid entry"
   ;;

E)
       echo "existing from script in system"
       exit 0
       ;;

esac

done
