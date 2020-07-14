#!/bin/bash
#
# Change this to specify a different handbrake preset. You can list them by running: "HandBrakeCLI --preset-list"
#
# Usage: handbrakefolder.sh [FOLDER] Run handbrake on all the files contained in [FOLDER]. (the current directory by default)
# DO NOT RUN IN THE SAME DIRECTORY AS ANY VIDEO, IT FUTZES IT ALL UP.
#
PRESET="Universal"
if [ -z "$1" ] ; then
    TRANSCODEDIR="."
else
    TRANSCODEDIR="$1"
fi

find "$TRANSCODEDIR"/* -type f -exec bash -c '~/bin/HandBrakeCLI -i "$1" -o "${1%\.*}".mp4 --preset="$PRESET";' __ {} \;