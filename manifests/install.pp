#Install this silly bugger

class 'vandenginx::install': {
class{'nginx':}


nginx::resource::vhost {'nginx.attlocal.net':
  www_root => '/opt/html/consul.html',
  require  => File['host'],
}

}
