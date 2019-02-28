#!/bin/bash - 
#===============================================================================
#
#          FILE: test4b.sh
# 
#         USAGE: ./test4b.sh 
# 
#   DESCRIPTION: testing the exit status of a function
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 19:46:15
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


func1 ()
{
  ls -l badfile
  echo "This was a test of a bad command"
}	# ----------  end of function func1  ----------

echo "testing the function:"
func1
echo "The exit status is:$?"
