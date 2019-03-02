#!/bin/bash - 
#===============================================================================
#
#          FILE: smenu1.sh
# 
#         USAGE: ./smenu1.sh 
# 
#   DESCRIPTION: using select in the menu
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 03/02/2019 21:58:22
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

function diskspace {
  clear
  df -k
}

function whoseon {
  clear
  who
}

function memusage {
  clear
  vm_stat
}

PS3="Enter option:"
select option in "Display disk space" "Display logged on users" "Display memory usage" "Exit program"
do 
  case $option in
    "Exit program")
      break ;;
    "Display disk space")
      diskspace ;;
    "Display logged on users")
      whoseon ;;
    "Display memory usage")
      memusage ;;
    *)
      clear
      echo "Sorry, wrong selection" ;;
  esac
done
clear
