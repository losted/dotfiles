#!/usr/bin/env bash

# Check for Homebrew installation
if test ! $(which brew)
then
  # Install homebrew
  osx/apps/homebrew.sh
fi

# fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
  font-source-code-pro
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}
