#Install this silly bugger
class vandenginx::install{

  class{'::nginx':
    manage_repo    => true,
    package_source => 'nginx-mainline',

  }

  nginx::resource::server {'nginx.attlocal.net':
  listen_port => 80,
  www_root    => '/usr/share/nginx/html',
  ssl         => false,
#  require  => File['host'],
  }

  nginx::resource::upstream { 'upstream_app':
    members => [
      '192.168.40.10:80',
      '192.168.40.11:80',
    ],
  }


  }
