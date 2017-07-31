#!/bin/bash

#
#	This script will make a link to steamapps in /opt/steamapps
#

if [ "$#" -ne 1 ]; then
	echo "Usage:"
	echo "    $0 \"/path/to/steamapps\""
	exit
fi

# Check if this path contains file specific to Team Fortress 2

if ! [ -e "$1/common/Team Fortress 2/tf/gameinfo.txt" ]; then
	echo "Specified path doesn't point to steamapps or you don't have Team Fortress 2 instealled"
	exit
fi

echo "Is this the correct path?"
echo "$1"
read -p "Press enter to continue or Ctrl+C (close) to stop."
sudo ln -s "$1" "/opt/steamapps"
sudo chown $USER:catbots -h "/opt/steamapps"
echo "$1" > steamapps-loc