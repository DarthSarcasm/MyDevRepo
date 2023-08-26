#!/bin/bash
# Script to automate the format of a disk to ntfs

# Function to handle errors
error_exit()
{
	echo "$1" 1>&2
	exit 1
}

# List the mounted disks to find the SSD id
diskutil list

# identify the disk for formatting
unset disk_id
read -p "Which disk to format? (/dev/...):" disk_id || error_exit "Error entering Disk ID"
[ ! -z "$disk_id" ] && echo "Disk to format - /dev/$disk_id" || error_exit "Entry is empty"

# name the disk
unset disk_name
read -p "Please enter new disk name:" disk_name || error_exit "Error entering image name"
[ ! -z "$disk_name" ] && echo "Image to create - $disk_name" || error_exit "Entry is empty"

# After final confirmation, do the thing!
unset confirm
read -p "Format /dev/$disk_id to NTFS as $disk_name? [Y]/N:" confirm
if [ "$confirm" = "Y" ] || [ "$confirm" = "y" ] || [ "$confirm" = "" ]
then
	echo "Reformatting /dev/$disk_id as $disk_name. Please wait..."
else
	echo "Doing nothing!"
	exit 0
fi

# DO THE THING!
diskutil eraseDisk NTFS $disk_name /dev/$disk_id || error_exit "Error unounting disk"

# Did the thing, exit now.
echo "Disk Formatted successfully!"
exit 0