#!/bin/bash - 
#===============================================================================
#
#          FILE: badtest3.sh
# 
#         USAGE: ./badtest3.sh 
# 
#   DESCRIPTION: trying to pass an array variable
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 21:00:11
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


testit ()
{
  echo "The parameters are: $@"
  thisarray=$1
  echo "The received array is ${thisarray[*]}"
}	# ----------  end of function testit  ----------

myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
testit $myarray
