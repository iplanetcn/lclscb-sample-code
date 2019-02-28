#!/bin/bash - 
#===============================================================================
#
#          FILE: test12.sh
# 
#         USAGE: ./test12.sh 
# 
#   DESCRIPTION: returning an array value
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 21:37:10
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


arraydblr ()
{
  local origarray
  local newarray
  local elements
  local i
  origarray=($(echo "$@"))
  newarray=($(echo "$@"))
  elements=$[ $# - 1 ]
  
  for (( i=0; i<=$elements; i++ )); do
    newarray[$i]=$[ ${origarray[$i]} * 2 ]
  done
  echo ${newarray[*]}
}	# ----------  end of function arraydblr  ----------

myarray=(1 2 3 4 5)
echo "The original array is:${myarray[*]}"
arg1=$(echo ${myarray[*]})
result=($(arraydblr $arg1))
echo "The new array is: ${result[*]}"

