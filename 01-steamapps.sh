#
#	This script will store path to steamapps to use it in other scripts later
#

if [ "$#" -ne 1 ]; then
	echo "Usage:"
	echo "    $0 \"/path/to/steamapps\""
	exit
fi

# Check if this path contains file specific to Team Fortress 2

if ! [ -e "$1/common/Team Fortress 2/tf/gameinfo.txt" ]; then
	echo "Specified path doesn't point to steamapps or you don't have Team Fortress 2 instealled"
	exit
fi

echo "Everything looks good. Saving steamapps path."
echo "$1"
echo "$1" > steamapps-loc