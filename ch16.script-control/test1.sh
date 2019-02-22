#!/bin/bash - 
#===============================================================================
#
#          FILE: test1.sh
# 
#         USAGE: ./test1.sh 
# 
#   DESCRIPTION: Testing signal trapping 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanet), iplanetcn@gmail.com
#  ORGANIZATION: 
#       CREATED: 02/22/2019 03:55:40 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
#
trap "echo 'Sorry! I have trapped Ctrl-C'" SIGINT
#
echo this is a test script
#
count=1
while [ $count -le 10 ]
do
  echo "Loop #$count"
  sleep 1
  count=$[ $count + 1 ]
done
#
echo this is the end of the test script

