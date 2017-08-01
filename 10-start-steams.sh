#!/bin/bash

#
#	This script starts N steam instances, 6 by default
#

max=6

if [ "$#" == 1 ]; then
	max=$1
fi

# Required for steam to start as other users
xhost + >/dev/null

for i in $(seq 1 $max)
do
	echo "Starting Steam for catbot $i"
	sudo su - catbot-$i -c 'steam &>/dev/null &'
done