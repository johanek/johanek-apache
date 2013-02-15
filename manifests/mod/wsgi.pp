class apache::mod::wsgi {

  package { 'mod_wsgi_package':
    ensure  => installed,
    name    => $apache::params::mod_wsgi_package,
    require => Class['apache::install'];
  }

  a2mod { 'wsgi': ensure => present; }

}

