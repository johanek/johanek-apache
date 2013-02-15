class apache::mod::auth_kerb {

  package { 'mod_auth_kerb_package':
    ensure  => installed,
    name    => $apache::params::mod_auth_kerb_package,
    require =>Class['apache::install'];
  }

  a2mod { 'auth_kerb': ensure => present; }

}


