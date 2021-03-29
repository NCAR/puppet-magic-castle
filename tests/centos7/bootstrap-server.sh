#!/usr/bin/env bash
# set -eox

# if which puppet > /dev/null 2>&1; then
#   echo 'Puppet Installed'
# else
    echo 'Installing Puppet Server'
    rpm -ivh https://yum.puppetlabs.com/puppet7-release-el-7.noarch.rpm
    yum -y install puppetserver
    echo '*.mcdev' > /etc/puppetlabs/puppet/autosign.conf
    puppet resource service iptables ensure=stopped enable=false
    puppet resource service puppetserver ensure=running enable=true
    # systemctl start puppetserver
    # systemctl enable puppetserver
# fi
