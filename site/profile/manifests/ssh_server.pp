class profile::ssh_server{
  package{ 'openssh-server':
    ensure => present,
  }
  
  service{ 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  
  ssh_authorized_key{ 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCZ4kn+XlgM+mmTmd2IYkLSN/ye66c6wt4nk3pOV7aRKfMMPytpfdCGLtVGYaYDJyfU57GFiChCqMuvvK2HOQ6wwrowpWeS8Zx3cPps/+jYEzSyt7NTBRx7SeIVg2qPIdzI/zzzzsBtRLOGWNNe6fMnAs/1Ttiw+vzMpF1Cp1yfh4pG0mwUQNInIGDGp0b/cIitJCkSZv2hPL8mbXNCJ7RCyVXYL3p6XxdAygzbxp7Tvm8XDKjQ+dy/tJO2/6wyCy/+hTzOBk6NWH72bUHxZVsiKFkoBwMMmBpvGIC7pLe119jKx7WAhOUCFofNvaN8TqHaccQ9MpUPA6U+JkeIOlwd',
  }
}
