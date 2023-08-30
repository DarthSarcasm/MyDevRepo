#!/bin/bash
# Author:      Heinrich Vermeulen
# Date:        01 December 2016
# Purpose:     Basic startup script for Portable Media Server
# Description: Start up and look for any USB drives
#              Mount the first drive it finds
#              Blah

myMount="/media/pi"

# Look for any USB drives
theList=$(readlink -f /dev/disk/by-id/*usb*part*)
echo "Found the following drives: " $theList

# Mount the first drive it finds
echo "Mounting" $theList "onto" $myMount
mount $theList $myMount

echo "Kill minidlna"
killall minidlnad
sleep 3

echo "Rebuild the database"
minidlnad -R -f /etc/minidlna.conf
sleep 3

echo "Kill minidlna"
killall minidlnad
sleep 3

echo "Start minidlna"
minidlnad -f /etc/minidlna.conf
sleep 3
