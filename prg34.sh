#!/bin/bash
#Demonstrate until loop
#Till condition become true, the loop executes
c=1
until [ $c -gt 100 ]
do
  echo $c
  ((c++))
done
