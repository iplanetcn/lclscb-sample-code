#!/bin/bash - 
#===============================================================================
#
#          FILE: test11.sh
# 
#         USAGE: ./test11.sh 
# 
#   DESCRIPTION: adding values in an array
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 21:32:03
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


addarray ()
{
  local sum=0
  local newarray
  newarray=($(echo "$@"))
  for value in ${newarray[*]} ; do
    sum=$[ $sum + $value ]
  done
  echo $sum
}	# ----------  end of function addarray  ----------

myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
arg1=$(echo ${myarray[*]})
result=$(addarray $arg1)
echo "The result is $result"
