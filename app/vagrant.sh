#!/usr/bin/env bash

# Install the BindFS plugin
vagrant plugin install vagrant-bindfs

# Install the VMWare Fusion Provider
vagrant plugin install vagrant-vmware-fusion

# Install the license (available in 1Password)
vagrant plugin license vagrant-vmware-fusion ~/license.lic
