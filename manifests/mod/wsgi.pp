class apache::mod::wsgi {
  
  require 'apache'

  package { 'mod_wsgi_package':
    ensure  => installed,
    name    => $apache::params::mod_wsgi_package,
    require => Class['apache::install'];
  }

  a2mod { 'wsgi': ensure => present; }

}

