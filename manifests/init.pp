# = Class: apache
#
# This class will install apache
#
#== Requirements
# Puppet 2.7+
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
# [*default_mods*]
#   Install default set of mods from apache::mod::default. Default: true
#
# [*serveradmin*]
#   Set serveradmin config. Default: root@localhost
#
# [*sendfile*]
#   Use the kernel sendfile support to deliver files to the client. Default: false
#
class apache (
  $enabled        = true,
  $enableboot     = true,
  $version        = latest,
  $default_mods   = true,
  $serveradmin    = 'root@localhost',
  $sendfile       = false
) {

  class { 'apache::params': } ->
  class { 'apache::install': } ->
  class { 'apache::config': } ->
  class { 'apache::service': }

}
