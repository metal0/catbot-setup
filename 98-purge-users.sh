#!/bin/bash

#
#	Will delete all catbot- users and their home directories
#

read -p "Press ENTER to continue"

for i in {1..12}
do
	echo "Deleting user catbot-$i"
	sudo userdel -r catbot-$i
done