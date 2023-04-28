#!/bin/bash
echo "Your login name is $(logname)"
echo "Your pwd is `pwd`"
echo "The server name is `hostname`"
echo "The kernel version is: $(uname -r)"
echo "The Redhat Release is:"
cat /etc/redhat-release
