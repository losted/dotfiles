#!/usr/bin/env bash

# Download Homestead Vagrant Image
vagrant box add laravel/homestead

# Create Homestead folder in home directory
mkdir -p "$HOME/Homestead"

# Clone Homestead setup files in ~/Homestead
git clone https://github.com/laravel/homestead.git "$HOME/Homestead"

# Then you need to update ~/.homestead/Homestead.yaml
# Before doing : vagrant up