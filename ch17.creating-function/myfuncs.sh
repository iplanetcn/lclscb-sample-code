#!/bin/bash - 
#===============================================================================
#
#          FILE: myfuncs.sh
# 
#         USAGE: ./myfuncs.sh 
# 
#   DESCRIPTION: my script functions
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 21:52:02
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


addem ()
{
  echo $[ $1 + $2 ]
}	# ----------  end of function addem  ----------


multem ()
{
  echo $[ $1 + $2 ]
}	# ----------  end of function multem  ----------


divem ()
{
  
  if [ $2 -ne 0 ] ; then
    echo $[ $1 / $2 ]
  else
    echo -1
  fi
}	# ----------  end of function divem  ----------
