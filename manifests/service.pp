# Class apache::service
class apache::service {
  service { 'httpd':
    ensure  => $apache::params::service_ensure,
    enable  => $apache::params::service_enable,
    name    => $apache::params::apache_name,
  }
}