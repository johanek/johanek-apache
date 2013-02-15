class apache::install {

  package { 'httpd':
    ensure => $apache::version,
    name   => $apache::params::apache_name,
  }
  
  if $apache::default_mods == true {
    class { 'apache::mod::default': }
  }

}