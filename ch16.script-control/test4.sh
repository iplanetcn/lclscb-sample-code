#!/bin/bash - 
#===============================================================================
#
#          FILE: test4.sh
# 
#         USAGE: ./test4.sh 
# 
#   DESCRIPTION: Test running in the background
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanet), iplanetcn@gmail.com
#  ORGANIZATION: 
#       CREATED: 02/22/2019 08:36:30 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

count=1

while [ $count -le 10 ]; do
  sleep 1
  count=$[ $count+1 ]
done
