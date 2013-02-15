class apache::mod::wsgi {

  package { 'mod_wsgi_package':
    ensure  => installed,
    name    => $apache::params::mod_wsgi_package,
    require => Package['httpd'];
  }

  a2mod { 'wsgi': ensure => present; }

}

