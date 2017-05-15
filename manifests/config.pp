#config setup
class  vandenginx::config {
  file { 'puppro':
  ensure => present,
  path   => '/usr/share/nginx/html/index.html',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  source => 'puppet:///modules/vandenginx/index.html',
  }
}
