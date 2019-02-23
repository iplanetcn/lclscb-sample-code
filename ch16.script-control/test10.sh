#!/bin/bash - 
#===============================================================================
#
#          FILE: test10.sh
# 
#         USAGE: ./test10.sh 
# 
#   DESCRIPTION: Test job control
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
echo "Script Process ID:$$"
count=1

while [ $count -le 10 ]; do
  echo "Loop #$count"
  sleep 10
  count=$[ $count+1 ]
done

echo "End of script..."
