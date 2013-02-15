class apache::mod::dev {
  # Development packages have no mod to load
  $packages = $apache::params::mod_packages['dev']
  package { $packages:
    ensure  => present,
    require => Class['apache::install']
  }
}
