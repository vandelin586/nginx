#Install this silly bugger
class {'::vandenginx::install':

    nginx::resource::vhost {'nginx.attlocal.net':
  www_root => '/opt/html/consul.html',
  require  => File['host'],
  }
}
