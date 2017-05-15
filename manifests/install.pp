#Install this silly bugger

class{'nginx':
} 

nginx::resource::server {'nginx.attlocal.net':
  www_root => '/opt/html/consul.html',
  require  => File['host'],
