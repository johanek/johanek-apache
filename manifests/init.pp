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
  class { 'apache::config': } ->
  class { 'apache::service }

}
