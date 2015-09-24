#!/usr/bin/env bash

# Install Gitlab

# Install and configure the necessary dependencies
sudo yum install curl openssh-server postfix cronie
sudo service postfix start
sudo chkconfig postfix on
sudo lokkit -s http -s ssh

# Add the GitLab package server and install the package
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
sudo yum install gitlab-ce

# Configure and start GitLab
sudo gitlab-ctl reconfigure
