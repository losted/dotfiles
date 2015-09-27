#!/usr/bin/env bash

# Check for Homebrew installation
if test ! $(which brew)
then
  echo "Installing Homebrew..."

  # Install homebrew
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

# Update homebrew formaulaes
brew update
brew upgrade

# Install some Tap
brew tap homebrew/dupes
brew tap homebrew/homebrew-php
brew tap caskroom/homebrew-cask
brew tap caskroom/versions
brew tap caskroom/fonts

# Install Homebrew Cask
brew install caskroom/cask/brew-cask
