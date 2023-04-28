#!/bin/bash
for i in 192.168.1.97
do 
 echo scp /etc/yum.repo.d $i:/tmp
done
