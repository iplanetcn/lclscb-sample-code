#!/bin/bash - 
#===============================================================================
#
#          FILE: test4.sh
# 
#         USAGE: ./test4.sh 
# 
#   DESCRIPTION: testing the exit status of a function
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 19:42:33
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


func1 ()
{
  echo "trying to display a non-existent file"
  ls -l badfile
}	# ----------  end of function func1  ----------

echo "testing the function:"
func1
echo "The exit status is:$?"
