class apache::install {

  package { 'httpd':
    ensure => installed,
    name   => $apache::params::apache_name,
  }

}