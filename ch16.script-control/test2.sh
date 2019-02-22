#!/bin/bash - 
#===============================================================================
#
#          FILE: test2.sh
# 
#         USAGE: ./test2.sh 
# 
#   DESCRIPTION: Trapping the scrip exit
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanet), iplanetcn@gmail.com
#  ORGANIZATION: 
#       CREATED: 02/22/2019 05:57:41 PM
#      REVISION:  ---
#===============================================================================
set -o nounset                              # Treat unset variables as an error

trap "echo Goodbye..." EXIT

count=1

while [ $count -le 5 ] ; do
  echo "Loop #$count"
  sleep 1
  count=$[ $count + 1]
done
