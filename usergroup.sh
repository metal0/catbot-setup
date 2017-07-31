#!/bin/bash

#
#	This script creates a new group and adds current user to it
#

if [ $EUID == 0 ]; then
	echo "This script must not be run as root"
	exit
fi

sudo groupadd catbots
sudo usermod -a -G catbots $USER