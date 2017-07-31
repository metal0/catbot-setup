#!/bin/bash

#
#	This script performs initial download of cathook IPC server
#

if [ $EUID == 0 ]; then
	echo "This script must not be run as root"
	exit
fi

git clone https://github.com/nullifiedcat/cathook-ipc-server --recursive