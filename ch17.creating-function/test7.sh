#!/bin/bash - 
#===============================================================================
#
#          FILE: test7.sh
# 
#         USAGE: ./test7.sh 
# 
#   DESCRIPTION: trying to access script parameters inside a function
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 20:06:11
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


func7 ()
{
  echo $[ $1 * $2 ]
}	# ----------  end of function func7  ----------


if [ $# -eq 2 ]; then
  value=$(func7 $1 $2)
  echo "The result is $value"
else
  echo "Usage: test7 a b"
fi
