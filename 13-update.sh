#!/bin/bash

#
#	This script updates setup/run scripts and cathook IPC server
#

if [ $EUID == 0 ]; then
	echo "This script must not be run as root"
	exit
fi

git fetch
git pull

bash ./06-rebuild-ipc-server.sh