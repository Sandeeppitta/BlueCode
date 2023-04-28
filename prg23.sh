#!/bin/bash
count=0
for i in  /dev/sd?
do
  echo $i

  ((count++))
done
echo "You have $count block devices in this system"
#End
