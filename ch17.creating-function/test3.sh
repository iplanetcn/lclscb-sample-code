#!/bin/bash - 
#===============================================================================
#
#          FILE: test3.sh
# 
#         USAGE: ./test3.sh 
# 
#   DESCRIPTION: testing using a duplacate function name
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 19:21:30
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


func1 ()
{
  echo "This is the first definition of the function name"
}	# ----------  end of function func1  ----------

func1


func1 ()
{
  echo "This is a repeat of the same function name"
}	# ----------  end of function func1  ----------

func1
echo "This is the end of the script"
