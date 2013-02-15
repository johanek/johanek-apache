# Class apache::config
class apache::config {

  File {
    notify => Class['apache::service']
  }

  file { 'httpd_vdir':
    ensure  => directory,
    path    => $apache::params::vdir,
    recurse => true,
    purge   => true,
    notify  => Service['httpd']
  }

  # Redhat style config
  if $apache::params::conf_dir and $apache::params::conf_file {
    file { "${apache::params::conf_dir}/${apache::params::conf_file}":
      ensure  => present,
      content => template("apache/${apache::params::conf_file}.erb")
    }
    if $default_mods == true {
      class { 'apache::mod::default': }
    }
  }
  
  # Debian style config
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