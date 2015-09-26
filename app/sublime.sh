#!/usr/bin/env bash

# WARNING: Remove old directories and symlink new ones from Dropbox

# Install Package Control
wget http://packagecontrol.io/Package%20Control.sublime-package -P "$HOME/Library/Application Support/Sublime Text 3/Installed Packages/" -N

# Install PHP-CS-Fixer to enable PSR2 Build
composer global require fabpot/php-cs-fixer

# Link preferences files
# rm -f "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
# ln -s "$(pwd)/$(dirname $0)/sublimetext3/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
# ln -s "$(pwd)/$(dirname $0)/sublimetext3/Package Control.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"

# Link theme file
# ln -s "$(pwd)/$(dirname $0)/sublimetext3/Default.sublime-theme" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default.sublime-theme"

# Link snippets
# ln -s "$(pwd)/$(dirname $0)/sublimetext3/snippets" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Snippets"

# Add shortcut to Dock
# defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$HOME/Applications/Sublime Text.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>
