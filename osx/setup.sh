#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install XCode Command Line Tools
if [ $(xcode-select -p &> /dev/null; printf $?) -ne 0 ]; then
    xcode-select --install &> /dev/null
    # Wait until the XCode Command Line Tools are installed
    while [ $(xcode-select -p &> /dev/null; printf $?) -ne 0 ]; do
        sleep 5
    done
fi

# Prompt user to agree to the terms of the Xcode license
# https://github.com/alrra/dotfiles/issues/10
sudo xcodebuild -license

# Install things
source osx/apps.sh
source osx/fonts.sh
source osx/config.sh
source osx/dock.sh

# Brew cleanup
brew cleanup

# Desktop cleanup
rm ~/Desktop/.DS_Store
rm ~/Desktop/.localized

# Completed Message
echo "Completed. Note that some of these changes require a logout/restart to take effect."
osascript -e 'display notification "Note that some of these changes require a logout/restart to take effect." with title "Completed"'

# Close all Applications
for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
    "Dock" "Finder" "Google Chrome" "Mail" "Messages" \
    "Opera" "Safari" "Kaleidoscope" "SystemUIServer" "Terminal" "iTerm" \
    "Transmission" "iCal"; do
    killall "${app}" > /dev/null 2>&1
done
