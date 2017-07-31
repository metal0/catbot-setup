#!/bin/bash

#
#	12 is pretty optimal amount
#

steamapps=$(cat steamapps-loc)

echo "Steamapps path: $steamapps"
echo "Is that correct? If no, close this window immediately."
read -p "Press ENTER to continue"

for i in {0..12}
do
	echo "Creating user catbot-$i"
	echo "ln -s \"$steamapps\" \"/home/catbot-$i/.local/share/Steam/steamapps\""
#	sudo useradd -m catbot-$i
#	sudo usermod -g catbots catbot-$i
#	sudo -H -u steam-$1 bash -c "mkdir -p /home/catbot-$i/.local/share/Steam"
#	sudo -H -u steam-$1 bash -c "ln -s '/mnt/encrypted-data/SteamLibrary/steamapps' /home/steam-$1/.local/share/Steam/steamapps"
done