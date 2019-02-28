#!/bin/bash - 
#===============================================================================
#
#          FILE: test10.sh
# 
#         USAGE: ./test10.sh 
# 
#   DESCRIPTION: array variable to function test
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 21:02:58
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

testit ()
{
  local newarray
  newarray=(`echo "$@"`)
  echo "The new array value is: ${newarray[*]}"
}	# ----------  end of function testit  ----------

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
testit ${myarray[*]}
