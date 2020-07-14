#!/bin/bash
# UNIX script to use Don Melton's transcode-video script to convert TV/Films

# requires the DM ruby gem video_transcoding and 4 homebrew installs;
# handbrakecli
# mp4v2
# mkxtollnix
# mpv

PROC_FILE=$1

transcode-video --m4v --quick "$PROC_FILE"
