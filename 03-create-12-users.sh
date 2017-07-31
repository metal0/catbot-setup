#!/bin/bash

#
#	12 is pretty optimal amount
#

if ! [ -e "/opt/steamapps" ]; then
	echo "Can't find steamapps folder."
	echo "Please, run scripts in the right order."
	exit
fi

read -p "Press ENTER to continue"

for i in {1..12}
do
	echo "Creating user catbot-$i"
	sudo useradd -m catbot-$i
	sudo usermod -g catbots catbot-$i
	sudo -H -u catbot-$i bash -c "mkdir -p /home/catbot-$i/.local/share/Steam"
	sudo -H -u catbot-$i bash -c "ln -s \"/opt/steamapps\" \"/home/catbot-$i/.local/share/Steam/steamapps\""
done