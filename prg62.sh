#!/bin/bash
#Demonstrate functions in bash shell
function printme()
{
echo "In printme function"
}
#End of printme function 

#main Script
echo "This is main Script"
#calling printme function
printme
echo "Back to Main Script"\
echo "Calling printme again"
printme
echo "Again back to main script"
#End
