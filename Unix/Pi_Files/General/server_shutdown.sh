# Quick and dirty script to unmount the drive before a shutdown...

sudo umount /dev/sda2
sleep 10
sudo shutdown -P -h 0
