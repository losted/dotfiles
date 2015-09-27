#!/usr/bin/env bash

# Install Vagrant
brew cask install caskroom/cask/vagrant

# Install the BindFS plugin
vagrant plugin install vagrant-bindfs

# Install the VMWare Fusion Provider
vagrant plugin install vagrant-vmware-fusion
