#Install this silly bugger
class vandenginx::install{


  nginx::resource::server {'nginx':
  ensure  => present,
  www_root => '/opt/html/consul.html',
  require  => File['host'],
  }

}
