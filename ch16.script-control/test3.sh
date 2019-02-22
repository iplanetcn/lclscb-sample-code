#!/bin/bash - 
#===============================================================================
#
#          FILE: test3.sh
# 
#         USAGE: ./test3.sh 
# 
#   DESCRIPTION: Modifing a set trap 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanet), iplanetcn@gmail.com
#  ORGANIZATION: 
#       CREATED: 02/22/2019 06:02:25 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

trap "echo ' Sorry... ctrl-c is trapped.'" SIGINT
count=1

while [ $count -le 5 ] ; do
  echo "Loop #$count"
  sleep 1
  count=$[ $count + 1 ]
done

trap "echo ' I modified the trap!'" SIGINT
count=1

while [ $count -le 5 ] ; do
  echo "Second Loop #$count"
  sleep 1
  count=$[ $count + 1]
done
