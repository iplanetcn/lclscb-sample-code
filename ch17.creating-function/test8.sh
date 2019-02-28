#!/bin/bash - 
#===============================================================================
#
#          FILE: test8.sh
# 
#         USAGE: ./test8.sh 
# 
#   DESCRIPTION: using a global variable to pass a value
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 20:15:24
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


db1 ()
{
  value=$[ $value * 2 ]
}	# ----------  end of function db1  ----------

read -p "Enter a value: " value
db1
echo "The new value is: $value"
