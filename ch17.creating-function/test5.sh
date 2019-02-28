#!/bin/bash - 
#===============================================================================
#
#          FILE: test5.sh
# 
#         USAGE: ./test5.sh 
# 
#   DESCRIPTION: using the return command in a function
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: * exit status scope [0,255]
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 19:49:10
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

db1 ()
{
  read -p "Enter a value: " value
  echo "doubling the value"
  return $[ $value * 2 ]
}	# ----------  end of function db1  ----------

db1
echo "The new value is $?"
