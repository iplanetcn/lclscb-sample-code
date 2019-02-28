#!/bin/bash - 
#===============================================================================
#
#          FILE: test5b.sh
# 
#         USAGE: ./test5b.sh 
# 
#   DESCRIPTION: using the echo to return a value
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 19:54:05
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


db1 ()
{
  read -p "Enter a value: " value
  echo $[ $value * 2 ]
}	# ----------  end of function db1  ----------

result=$(db1)
echo "The new value is $result"
