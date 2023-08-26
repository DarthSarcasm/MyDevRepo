echo "Updating Installed Packages..."
sudo apt update && sudo apt upgrade -y
echo "Perfroming install clean up..."
sudo apt autoclean && sudo apt clean && sudo apt autoremove
echo "Update Complete!"
