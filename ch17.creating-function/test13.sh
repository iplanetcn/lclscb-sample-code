#!/bin/bash - 
#===============================================================================
#
#          FILE: test13.sh
# 
#         USAGE: ./test13.sh 
# 
#   DESCRIPTION: using recursion
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 21:45:02
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


factorial ()
{
  
  if [ $1 -eq 1 ] ; then
    echo 1
  else
    local temp=$[ $1 -1 ]
    local result=$(factorial $temp)
    echo $[ $result * $1 ]
  fi
}	# ----------  end of function factorial  ----------

read -p "Enter value: " value
result=$(factorial $value)
echo "The factorial of $value is: $result"
