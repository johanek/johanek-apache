# = Class: apache
#
# This class will install apache
#
#== Requirements
# None
#
# == Parameters
#
# [*enabled*]
#   Set to 'false' to stop service. Default: true
#
# [*enableboot*]
#   Set to 'false' to prevent service starting at boot. Default: true
#
# [*version*]
#   Set to desired version. Default: latest
#
class apache (
  $enabled        = true,
  $enableboot     = true,
  $version        = latest,
  $default_mods = true,
  $service_enable = true,
  $serveradmin  = 'root@localhost',
  $sendfile     = false
) {

  class { 'apache::params': }
  class { 'apache::install': } ->
  class { 'apache::service }



  file { 'httpd_vdir':
    ensure  => directory,
    path    => $apache::params::vdir,
    recurse => true,
    purge   => true,
    notify  => Service['httpd'],
    require => Package['httpd'],
  }

  if $apache::params::conf_dir and $apache::params::conf_file {
    # Template uses:
    # - $apache::params::user
    # - $apache::params::group
    # - $apache::params::conf_dir
    # - $serveradmin
    file { "${apache::params::conf_dir}/${apache::params::conf_file}":
      ensure  => present,
      content => template("apache/${apache::params::conf_file}.erb"),
      notify  => Service['httpd'],
      require => Package['httpd'],
    }
    if $default_mods == true {
      include apache::mod::default
    }
  }
  if $apache::params::mod_dir {
    file { $apache::params::mod_dir:
      ensure  => directory,
      require => Package['httpd'],
    } -> A2mod <| |>
    resources { 'a2mod':
      purge => true,
    }
  }
}
