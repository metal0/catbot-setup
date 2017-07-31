#!/bin/bash

#
#	This script asks user about location of cathook folder and saves it
#

if [ $EUID == 0 ]; then
	echo "This script must not be run as root"
	exit
fi

if [ "$#" -ne 1 ]; then
	echo "Usage:"
	echo "    $0 \"/path/to/cathook\""
	echo "Example:"
	echo "    $0 \"/home/nullifiedcat/cathook\""
	exit
fi

if ! [ -e "$1/" ] || ! [ -e "$1/.git" ] || ! [ -e "$1/source-sdk-2013" ]; then
	echo "Specified path doesn't point to cathook directory"
	exit
fi

echo "Is this the correct path?"
echo "$1"
read -p "Press enter to continue or Ctrl+C (close) to stop."
echo "$1" > cathook-location