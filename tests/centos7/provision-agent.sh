#!/usr/bin/env bash
set -eox

sudo rpm -ivh https://yum.puppetlabs.com/puppet7-release-el-7.noarch.rpm
sudo yum -y install puppet-agent
sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
