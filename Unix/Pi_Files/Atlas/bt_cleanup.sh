#!/bin/bash

# Find the transmission container id and run the script to remove all completed jobs
CONTAINER_ID=$(docker ps | grep "transmission" | awk '{print $1}')
docker exec $CONTAINER_ID /storage/transmission_remove_finished.sh

# Now remove all the hidden sync files for completed transfers
rm -rf /mnt/nas/Public/Downloads/.sync/Archive/complete/*

# Followed by all the hidden sync files for watched torrent files
rm -f /mnt/nas/Public/Downloads/.sync/Archive/watch/*

