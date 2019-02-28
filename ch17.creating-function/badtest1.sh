#!/bin/bash - 
#===============================================================================
#
#          FILE: badtest1.sh
# 
#         USAGE: ./badtest1.sh 
# 
#   DESCRIPTION: trying to access script parameters inside a function
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 20:02:30
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


badfunc1 ()
{
  echo $[ $1 * $2 ]
}	# ----------  end of function badfunc1  ----------


if [ $# -eq 2 ] ; then
  value=$(badfunc1)
  echo "The result is $value"
else
  echo "Usage: badtest1 a b"
fi
