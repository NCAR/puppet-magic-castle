#!/usr/bin/env bash
set -eox
sudo rpm -ivh https://yum.puppetlabs.com/puppet7-release-el-7.noarch.rpm
sudo yum -y install puppetserver
sudo systemctl start puppetserver
sudo systemctl enable puppetserver
