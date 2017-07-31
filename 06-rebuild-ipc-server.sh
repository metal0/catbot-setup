#!/bin/bash

#
#	This script updates and rebuilds cathook IPC server
#

if [ $EUID == 0 ]; then
	echo "This script must not be run as root"
	exit
fi

numcpu=$(grep -c ^processor /proc/cpuinfo)

cd cathook-ipc-server
git fetch
git pull
make clean
make -j$numcpu