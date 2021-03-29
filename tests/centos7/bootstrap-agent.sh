#!/usr/bin/env bash
# set -eox
# if which puppet > /dev/null 2>&1; then
#   echo 'Puppet Installed'

# else
    echo 'Installing Puppet Agent'
    rpm -ivh https://yum.puppetlabs.com/puppet7-release-el-7.noarch.rpm
    yum -y install puppet-agent
    puppet resource service puppet ensure=running enable=true
    puppet config set --section main server mgmt.mcdev
# fi
