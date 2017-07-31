#!/bin/bash

#
#	This script injects cathook in every running hl2_linux instance
#

for i in `pidof hl2_linux`
do
	echo "Starting Team Fotress 2 for catbot $i"
	sudo ./inject.sh $i
done