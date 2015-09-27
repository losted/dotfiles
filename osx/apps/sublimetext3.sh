#!/usr/bin/env bash

# Install Sublime Text 3
brew cask install sublime-text3

# Open the app so the config files get initialized
open -g "$HOME/Applications/Sublime Text.app" && sleep 2 && osascript -e 'quit app "Sublime Text"'

# Install Package Control
wget http://packagecontrol.io/Package%20Control.sublime-package -P "$HOME/Library/Application Support/Sublime Text 3/Installed Packages/" -N

# Install PHP-CS-Fixer to enable PSR2 Build
composer global require fabpot/php-cs-fixer

# Link preferences files
rm -rf "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
ln -s "`pwd`"/sublimetext3/User/ "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
