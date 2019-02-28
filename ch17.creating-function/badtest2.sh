#!/bin/bash - 
#===============================================================================
#
#          FILE: badtest2.sh
# 
#         USAGE: ./badtest2.sh 
# 
#   DESCRIPTION: demonstrating a bad use of variables
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 20:20:11
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

func1 ()
{
  temp=$[ $value + 5 ]
  result=$[ $temp * 2 ]
}	# ----------  end of function func1  ----------

temp=4
value=6

func1
echo "The result is $result"


if [ $temp -gt $value ] ; then
  echo "temp is larger"
else
  echo "temp is smaller"
fi
