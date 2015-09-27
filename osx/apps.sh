#!/usr/bin/env bash

# Check for Homebrew installation
if test ! $(which brew)
then
  # Install homebrew
  osx/apps/homebrew.sh
fi

# Install tool first
osx/apps/tools.sh

# Install the Apps
osx/apps/1password.sh
osx/apps/adobe.sh
osx/apps/alfred.sh
osx/apps/chrome.sh
osx/apps/dropbox.sh
osx/apps/evernote.sh
osx/apps/git.sh
osx/apps/iterm2.sh
osx/apps/kaleidoscope.sh
osx/apps/moom.sh
osx/apps/node.sh
osx/apps/phpstorm.sh
osx/apps/sequelpro.sh
osx/apps/skype.sh
osx/apps/slack.sh
osx/apps/sourcetree.sh
osx/apps/spotify.sh
osx/apps/sublimetext3.sh
osx/apps/transmission.sh
osx/apps/transmit.sh
osx/apps/vagrant.sh
osx/apps/vlc.sh
osx/apps/vmware.sh
osx/apps/zsh.sh

# Install Composer & Laravel
osx/apps/composer.sh
osx/apps/laravel.sh

# Brew cleanup
brew cleanup