#config setup

file { 'host':
  ensure => present,
  path   => '/opt/html/consul.html',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  source => 'puppet:///modules/vandenginx/consul.html',
}
