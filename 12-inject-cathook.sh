#!/bin/bash

#
#	This script injects cathook in every running hl2_linux instance
#

mkdir -p /tmp/catbot-backtraces

for i in `pidof hl2_linux`
do
	echo "Injecting cathook for catbot $i"
	sudo ./inject.sh $i &>/tmp/catbot-backtraces/$i.log &
	sleep 1
done