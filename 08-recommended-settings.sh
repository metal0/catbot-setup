#!/bin/bash

#
#	This script copies recommended settings to cathook folder
#

if [ $EUID == 0 ]; then
	echo "This script must not be run as root"
	exit
fi

cp cat_autoexec_textmode.cfg "/opt/steamapps/common/Team Fortress 2/tf/cfg"
cp botspam "/opt/steamapps/common/Team Fortress 2/cathook"
