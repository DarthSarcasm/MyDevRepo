#!/bin/sh

function sync_Documents()	{	
	echo "Starting copy of Documents to iDisk..." >> $LOG
	# Use /usr/local/bin/rsync - it's 3.0.6 and can handle metadata
	cd /usr/local/bin
	./rsync -aEvzu --delete --exclude=.DS_Store --exclude=.TemporaryItems --exclude=.VolumeIcon.icns --exclude=tmp --exclude="Microsoft User Data"  --exclude="My Kindle Content" --stats --progress /Volumes/"Macintosh HD"/Users/Tony/Documents/ /Volumes/My\ iDisk/Documents/Aleph >> $LOG

	if [ $? -ne 0 ]
	then
		echo "Backup of Documents FAILED" >> $LOG
		echo "" >> $LOG
	else
		echo "Backup of Documents to iDisk complete..." >> $LOG
		echo "" >> $LOG
	fi
}

function sync_Pictures()	{	
	echo "Starting copy of Pictures to iDisk..." >> $LOG
	# Use /usr/local/bin/rsync - it's 3.0.6 and can handle metadata
	cd /usr/local/bin
	./rsync -aEvzu --delete --exclude=.DS_Store --exclude=.TemporaryItems --exclude=.VolumeIcon.icns --exclude=tmp --stats --progress /Volumes/"Macintosh HD"/Users/Tony/Pictures/ /Volumes/My\ iDisk/Pictures/Aleph >> $LOG

	if [ $? -ne 0 ]
	then
		echo "Backup of Pictures FAILED" >> $LOG
		echo "" >> $LOG
	else
		echo "Backup of Pictures to iDisk complete..." >> $LOG
		echo "" >> $LOG
	fi
}

export LOG=/Volumes/"Macintosh HD"/Users/Tony/idisk.log
echo `date` > $LOG

sync_Documents
sync_Pictures

echo `date` >> $LOG
exit 0