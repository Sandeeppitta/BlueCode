#!/bin/bash
echo "Print members of a group"
read -p "Enter the group name:" gname
echo "Below are members of $gname group:"
groupmems -l -g $gname
