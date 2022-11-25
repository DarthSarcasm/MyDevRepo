echo "First: update brew taps"
brew update
if [[ $? -ne 0 ]]
then
	echo "Unable to update brew files - exiting."
	exit 1
fi
echo "Second: upgrade installed formulae"
brew upgrade
if [[ $? -ne 0 ]]
then
	echo "Unable to upgrade installed brews - exiting."
	exit 2
fi
echo "Third: update Ruby gems"
sudo gem update video_transcoding
sudo gem update other_video_transcoding
