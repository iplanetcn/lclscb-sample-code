#!/bin/bash - 
#===============================================================================
#
#          FILE: test2.sh
# 
#         USAGE: ./test2.sh 
# 
#   DESCRIPTION: using a function located in the middle of a script
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/28/2019 19:10:27
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

count=1
echo "This line comes before the function definition"

func1 ()
{
  echo "This is an example of a function"
}	# ----------  end of function func1  ----------


while [ $count -le 5 ] ; do
  func1
  count=$[ $count + 1 ]
done

echo "This is the end of loop"

func2
echo "Now this is the end of the script"


func2 ()
{
  echo "This is an example of a function"
}	# ----------  end of function func2  ----------
