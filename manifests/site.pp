node default{
  file{'/root/README':
    ensure => file,
    content => 'this is the readme file',
    owner => 'root',
  }
  file{'/root/README':
    owner => 'root',
  }
}
