#!/bin/bash - 
#===============================================================================
#
#          FILE: test5.sh
# 
#         USAGE: ./test5.sh 
# 
#   DESCRIPTION: Test running in the background without output
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
echo "Start the test script"
count=1

while [ $count -le 5 ]; do
  echo "Loop #$count"
  sleep 1
  count=$[ $count+1 ]
done

echo "Test script is complete"
