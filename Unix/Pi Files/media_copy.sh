#!/bin/bash
# First Set Up Variables
_input="/mnt/nas/Media/Media Sync"
_output="/mnt/nas/Media"

movie_input="Movies"
movie_output="Movies"
tv_input="TV"
tv_output="TV Shows"
porn_input="Porn"
porn_output="Porn"
abook_input="Audiobooks"
abook_output="Audiobooks"
music_input="Music"
music_output="Music"

file_copy () {
	file_input="$1"
	file_output="$2"

	cd "$_input/$file_input"
	echo "Processing files in $PWD..."

	if [ $(find . ! -name . -prune -print | grep -c /) -eq 0 ]; then
		echo "No files to process, exiting."
		return
	fi

        for file in *
        do
                echo "Moving $_input/$file_input/$file to $_output/$file_output" # always double quote "$f" filename
                mv "$_input/$file_input/$file" "$_output/$file_output"
        done
	echo "All available files from $_output/$file_output moved."
}

# Start processing
file_copy "$movie_input" "$movie_output"
file_copy "$tv_input" "$tv_output"
file_copy "$porn_input" "$porn_output"
file_copy "$abook_input" "$abook_output"
file_copy "$music_input" "$music_output"
#file_copy "Local Test" "Local Output"

# Post processing clean up
unset -f file_copy
# And we're done.
exit 0

