#!/bin/bash - 
#===============================================================================
#
#          FILE: test1.sh
# 
#         USAGE: ./test1.sh 
# 
#   DESCRIPTION: using a function in a script
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 19:01:55
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

function func1 {
  echo "This is an example of a function"
}

count=1

while [ $count -le 5 ] ; do
  func1
  count=$[ $count + 1 ]
done

echo "This is the end of the loop"
func1
echo "Now this is the end of the script"
