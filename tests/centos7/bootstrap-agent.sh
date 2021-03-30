#!/usr/bin/env bash
set -eox
if command -v puppet > /dev/null 2>&1; then
  echo 'Puppet Installed'

else
    echo 'Installing Puppet Agent'
    rpm -ivh https://yum.puppetlabs.com/puppet7-release-el-7.noarch.rpm
    yum -y install puppet-agent
    /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
fi
