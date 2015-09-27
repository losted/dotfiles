#!/usr/bin/env bash

brew cask install caskroom/cask/kaleidoscope

# Ignore Whitespace by default
defaults write -app Kaleidoscope KSIgnoreWhitespaceUserDefaultsKey -int 1

# Do not send profile info
defaults write -app Kaleidoscope SUSendProfileInfo -int 0