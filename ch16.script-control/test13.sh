#!/bin/bash - 
#===============================================================================
#
#          FILE: test13.sh
# 
#         USAGE: ./test13.sh 
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

echo "This script ran at $(date + %B%d,%T)"
echo
sleep 5
echo "This is the script's end..."
