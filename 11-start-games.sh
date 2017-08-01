#!/bin/bash

#
#	This script starts N TF2 instances, 6 by default
#

max=6

if [ "$#" == 1 ]; then
	max=$1
fi

for i in $(seq 1 $max)
do
	echo "Starting Team Fortress 2 for catbot $i"
	skip=0
	for pid in $(pidof hl2_linux)
	do
		if sudo -H -u catbot-$i kill -0 $pid; then
			skip=1
			break
		fi
	done
	if ! [ "$skip" -eq "0" ]; then
		echo "Bot $i is already running"
		continue
	fi
	sudo -H -u catbot-$i bash -c 'steam -applaunch 440 -sw -textmode -novid -nojoy -nosound -noshaderapi -norebuildaudio -nomouse -nomessagebox -nominidumps -nohltv -nobreakpad &>/dev/null &'
	sleep 1
done

echo "[WARNING] Please, wait at least 30 seconds (or a minute) before injecting!"