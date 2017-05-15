#Install this silly bugger
class vandenginx::install{
  class { '::nginx': }


  nginx::resource::server {'nginx.attlocal.net':
  listen_port => 80,
  www_root    => '/opt/html',
  ssl         => false,
#  require  => File['host'],
  }

  class{'::nginx':
    manage_repo    => true,
    package_source => 'nginx-mainline',

}

  nginx::resource::upstream { 'upstream_app':
    members => [
      '192.168.40.10:80',
    ],
  }

  nginx::resource::server{'nginx.attlocal.net':
    www_root => '/opt/html/',
  }

  #nginx::resource::location{'/proxy':
  #  proxy => 'http://upstream_app/' ,
  #  server => 'www.myhost.com',

  }
