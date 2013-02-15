class apache::install {

  package { 'httpd':
    ensure => $apache::version,
    name   => $apache::params::apache_name,
  }

}