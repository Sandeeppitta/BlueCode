#!/bin/bash
#
read -p "Enter the OS name (Ex: solaris, aix, linux, unix, windows, MacOS):" os
case $os in 
  solaris)
         echo "The os selected is Solaris"
         ;;
      aix)
         echo "The os selected is aix"
         ;;
    linux)
        echo "The os selected is Linux"
         ;;
     unix)
         echo "The os selected is unix"
         ;; 
   windows)
        echo "The os selected is windows"
        ;;
     MacOS)
        echo "The os selected is MacOS"
        ;;
       *)
        echo "You entered other solaris, aix, linux, unix, windows, MacOS.."
        ;;
esac  #Case ststement Ends here
