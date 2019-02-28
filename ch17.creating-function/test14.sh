#!/bin/bash - 
#===============================================================================
#
#          FILE: test14.sh
# 
#         USAGE: ./test14.sh 
# 
#   DESCRIPTION: using functions defined in a library file
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 21:57:38
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. ./myfuncs.sh
value1=10
value2=5
result1=$(addem $value1 $value2)
result2=$(multem $value1 $value2)
result3=$(divem $value1 $value2)
echo "The result of adding them is: $result1"
echo "The result of multiplying them is: $result2" 
echo "The result of dividing them is: $result3"

