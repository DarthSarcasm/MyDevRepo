#!/bin/bash
# Script to automate the backup of Pi SSD installs to img files.

# Function to handle errors
error_exit()
{
	echo "$1" 1>&2
	exit 1
}

# List the mounted disks to find the SSD id
diskutil list

# unmount the SDC ready for copying
unset disk_id
read -p "Which disk to image (/dev/...):" disk_id || error_exit "Error entering Disk ID"
[ ! -z "$disk_id" ] && echo "Disk to unmount - /dev/$disk_id" || error_exit "Entry is empty"

# dump the SDC data into an img file
unset image_name
read -p "Please enter image name to create in Downloads folder (include extension):" image_name || error_exit "Error entering image name"
[ ! -z "$image_name" ] && echo "Image to create - $image_name" || error_exit "Entry is empty"

# After final confirmation, do the things!
unset confirm
read -p "Write $image_name to /dev/$disk_id? [Y]/N:" confirm
if [ "$confirm" = "Y" ] || [ "$confirm" = "y" ] || [ "$confirm" = "" ]
then
	echo "Writing image $image_name to /dev/$disk_id. Please wait..."
else
	echo "Doing nothing!"
	exit 0
fi

# DO THE THING!
diskutil unmountDisk /dev/$disk_id || error_exit "Error unounting disk"
#sudo dd if=/dev/$disk_id of=$HOME/Downloads/$image_name || error_exit "Error creating image"
sudo dd if=$HOME/Downloads/$image_name of=/dev/$disk_id || error_exit "Error writing image"

# Did the thing, exit now.
echo "Image created successfully!"
exit 0
