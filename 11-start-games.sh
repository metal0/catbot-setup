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
	echo "Starting Team Fotress 2 for catbot $i"
	echo "sudo -H -u catbot-$1 bash -c 'steam -applaunch 440 -sw -textmode -novid -nojoy -nosound -noshaderapi -norebuildaudio -nomouse -nomessagebox -nominidumps -nohltv -nobreakpad &>/dev/null &'" 
done