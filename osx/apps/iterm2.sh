#!/usr/bin/env bash

brew cask install caskroom/cask/iterm2

# Open the app so the preference files get initialized
open -g "$HOME/Applications/iTerm.app" && sleep 2 && osascript -e 'quit app "iTerm"'

# Show tab bar in FullScreen
defaults write com.googlecode.iterm2 ShowFullScreenTabBar -bool true

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Install our custom profile
defaults delete com.googlecode.iterm2
cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
defaults read com.googlecode.iterm2

# Reset the preferences cache
killall cfprefsd