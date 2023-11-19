# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install xcode command line tools
xcode-select –-install

# install from the bundle file ~/Brewfile
brew bundle install