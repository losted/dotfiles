#!/usr/bin/env bash

# Add jenkins repo and install jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins

# Open port 8080 in the firewall
iptables -I INPUT -p tcp --dport 8080 -j ACCEPT

# Save and restart iptables
service iptables save
service iptables restart

# Start jenkins
service jenkins start
