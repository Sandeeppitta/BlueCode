#!/bin/bash
function colorme()
{
 echo "In colorme function"
 echo $1
 return 55
}

#

echo "In main program"
colorme red
colorme blue
colorme green
echo $? #This print the function returned value.
echo "Again in Main program"

#End
