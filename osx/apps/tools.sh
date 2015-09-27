#!/usr/bin/env bash

# Install commandline tools
brew install coreutils
brew install findutils
brew install tree
brew install wget
brew install webkit2png
brew install imagemagick --with-webp
brew install homebrew/php/php56
brew install homebrew/php/php56-mcrypt
brew install homebrew/php/php56-xdebug
brew install bash

# Install a newer version of html tidy (for SublimeLinter package)
brew install tidy-html5

# Install GNU sed, overwriting the built-in 'sed'
brew install gnu-sed --with-default-names

# Fix pbcopy
brew install reattach-to-user-namespace --with-wrap-launchctl --with-wrap-pbcopy-and-pbpaste
