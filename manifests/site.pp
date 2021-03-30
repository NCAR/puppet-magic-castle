node default {

  file {'/etc/motd':
  content => 'My Testing content'
}
service {'postfix':
  ensure => 'running',
  enable => 'false'
}

}
