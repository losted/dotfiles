#!/usr/bin/env bash

# Install Homebrew + Homebrew Cask + Some apps.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Make sure we’re using the latest Homebrew.
brew update

# Install some Tap
brew tap phinze/homebrew-cask
brew tap caskroom/versions

# Install Homebrew Cask
brew install brew-cask

# Install Apps
brew cask install sublime-text3
brew cask install caskroom/cask/1password
brew cask install caskroom/cask/adobe-creative-cloud
brew cask install caskroom/cask/alfred
brew cask install caskroom/cask/dropbox
brew cask install caskroom/cask/evernote
brew cask install caskroom/cask/google-chrome
brew cask install caskroom/cask/kaleidoscope
brew cask install caskroom/cask/phpstorm
brew cask install caskroom/cask/sequel-pro
brew cask install caskroom/cask/skype
brew cask install caskroom/cask/spotify
brew cask install caskroom/cask/transmit
brew cask install caskroom/cask/vlc
brew cask install caskroom/cask/vmware-fusion

# Install ZSH+OH MY ZSH
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Set ZSH as default shell
chsh -s /bin/zsh
