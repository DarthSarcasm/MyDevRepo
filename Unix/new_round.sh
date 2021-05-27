echo "First: update brew taps"
brew update
echo "Second: upgrade installed formulae"
brew upgrade
echo "Third: update Ruby gems"
sudo gem update video_transcoding
sudo gem update other_video_transcoding
