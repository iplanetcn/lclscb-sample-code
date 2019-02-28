#!/bin/bash - 
#===============================================================================
#
#          FILE: badtest4.sh
# 
#         USAGE: ./badtest4.sh 
# 
#   DESCRIPTION: using a library file the wrong way
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 21:55:25
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
./myfuncs.sh

result=$(addem 10 15)
echo "The result is $result"
