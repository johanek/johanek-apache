define apache::mod (
  $package = undef
) {
  $mod = $name
  $mod_packages = $apache::params::mod_packages

  $mod_libs = $apache::params::mod_libs

  $mod_identifiers = $apache::params::mod_identifiers

  if $package {
    package { "$package":
      ensure   => present,
      require  => Class['apache::install'],
      before   => A2mod[$mod]
    }
  }

  a2mod { $mod:
    ensure     => present,
    lib        => $mod_libs,
    identifier => $mod_identifiers,
    require    => Class['apache::install'],
    notify     => Class['apache::service']
  }
}
