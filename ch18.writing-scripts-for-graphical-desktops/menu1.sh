#!/bin/bash - 
#===============================================================================
#
#          FILE: menu1.sh
# 
#         USAGE: ./menu1.sh 
# 
#   DESCRIPTION: simple srcipt menu
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: John (iPlanetcn), iplanetcn@gmail.com
#  ORGANIZATION: Open Source
#       CREATED: 03/02/2019 14:49:02
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


diskspace ()
{
  clear
  df -k
}	# ----------  end of function diskspace  ----------


whoseon ()
{
  clear
  who
}	# ----------  end of function whoseon  ----------


memusage ()
{
  clear
  vm_stat
}	# ----------  end of function memusage  ----------


menu ()
{
  clear
  echo
  echo -e "\t\t\tSys Admin Menu\n"
  echo -e "\t1. Display disk space"
  echo -e "\t2. Display logged on users"
  echo -e "\t3. Display momory usage"
  echo -e "\t0. Exit program\n\n"
  echo -en "\t\tEnter option: "
  read -n 1 option
}	# ----------  end of function menu  ----------


while [ 1 ] ; do
  menu
  
  case $option in
    0)
      break ;;

    1)
      diskspace ;;

    2)
      whoseon ;;
    3)
      memusage ;;
    *)
      clear
      echo "Sorry, wrong selection" ;;

    esac    # --- end of case ---
    echo -en "\n\n\t\t\tHit any key to continue"
    read -n 1 line
done
clear
