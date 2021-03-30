#!/usr/bin/env bash
set -eox

if command -v puppet > /dev/null 2>&1; then
  echo 'Puppet Installed'
else
    echo 'Installing Puppet Server'
    rpm -ivh https://yum.puppetlabs.com/puppet7-release-el-7.noarch.rpm
    yum -y install puppetserver
    echo '*.mcdev' >> /etc/puppetlabs/puppet/autosign.conf
    echo '*.ucar.edu' >> /etc/puppetlabs/puppet/autosign.conf
    /opt/puppetlabs/bin/puppet resource service iptables ensure=stopped enable=false
    /opt/puppetlabs/bin/puppet resource service puppetserver ensure=running enable=true
fi
