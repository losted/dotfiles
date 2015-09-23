#!/usr/bin/env bash

# WARNING: Remove old directories and symlink new ones from Dropbox

# Remove old directories
cd /opt/homebrew-cask/Caskroom/sublime-text3/*/Sublime\ Text.app/Contents/MacOS/
rm -rf Packages/
rm -rf Installed\ Packages/

# Symlink new directories from Dropbox
ln -s ~/Dropbox/Sublime\ Text\ 3/Packages/ Packages/
ln -s ~/Dropbox/Sublime\ Text\ 3/Installed\ Packages/ Installed\ Packages/
