#Install this silly bugger
class vandenginx::install{
  class { 'nginx': }


  nginx::resource::server {'nginx.attlocal.net':
  ensure  => present,
  www_root => '/opt/html/consul.html',
  require  => File['host'],
  }

}
