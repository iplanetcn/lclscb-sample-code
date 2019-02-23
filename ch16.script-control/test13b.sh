#!/bin/bash - 
#===============================================================================
#
#          FILE: test13b.sh
# 
#         USAGE: ./test13b.sh 
# 
#   DESCRIPTION: Testing using at command
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 02/24/2019 02:02:48
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

echo "This script ran at $(date + %B%d,%T)" > test13b.out
echo >> test13b.out
sleep 5
echo "This is the script's end..." >> test13b.out
