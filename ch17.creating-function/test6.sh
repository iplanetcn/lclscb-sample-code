#!/bin/bash - 
#===============================================================================
#
#          FILE: test6.sh
# 
#         USAGE: ./test6.sh 
# 
#   DESCRIPTION: passing parameters to a function
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 19:57:57
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


addem ()
{
  if [ $# -eq 0 ] || [ $# -gt 2 ]
  then
    echo -1
  elif [ $# -eq 1 ]
  then
    echo $[ $1 + $1 ]
  else
    echo $[ $1 + $2 ]
  fi
}	# ----------  end of function addem  ----------

echo -n "Adding 10 and 15: "
value=$(addem 10 15)
echo $value
echo -n "Let's try adding just one number: " value=$(addem 10)
echo $value
echo -n "Now trying adding no numbers: " value=$(addem)
echo $value
echo -n "Finally, try adding three numbers: " value=$(addem 10 15 20)
echo $value
