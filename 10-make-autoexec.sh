#!/bin/bash

#
#	This script generates cat_autoexec_textmode.cfg file
#

file="/opt/steamapps/common/Team Fortress 2/tf/cfg/cat_autoexec_textmode.cfg"

# Connect to IPC server
if ! grep -q "cat_ipc_connect" "$file" ; then
	echo -e "\ncat_ipc_connect" >> $file
fi

# Abandon the previous game
if ! grep -q "cat_debug_abandon" "$file" ; then
	echo -e "\ncat_debug_abandon" >> $file
fi

# Start auto-queueing
if ! grep -q "cat_debug_casual" "$file" ; then
	echo -e "\ncat_debug_casual" >> $file
fi
