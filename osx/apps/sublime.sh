#!/usr/bin/env bash

# WARNING: Remove old directories and symlink new ones from Dropbox

# Install Package Control
wget http://packagecontrol.io/Package%20Control.sublime-package -P "$HOME/Library/Application Support/Sublime Text 3/Installed Packages/" -N

# Install PHP-CS-Fixer to enable PSR2 Build
composer global require fabpot/php-cs-fixer

# Link preferences files
rm -f "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
ln -s sublimetext3/User/ "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
