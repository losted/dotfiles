#!/usr/bin/env bash

# Fix Homebrew bug with permission for OH MY ZSH install
sudo chown -R `whoami` /usr/local

# Install ZSH+OH MY ZSH
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Setup the right .zshrc
rm "$HOME/.zshrc"
mv "$HOME/.zshrc.pre-oh-my-zsh" "$HOME/.zshrc"