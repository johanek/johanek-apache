class apache::mod::default {
  apache::mod { 'actions': }
  apache::mod { 'alias': }
  apache::mod { 'auth_basic': }
  apache::mod { 'auth_digest': }
  apache::mod { 'authn_alias': }
  apache::mod { 'authn_anon': }
  apache::mod { 'authn_dbm': }
  apache::mod { 'authn_default': }
  apache::mod { 'authn_file': }
  apache::mod { 'authnz_ldap': }
  apache::mod { 'authz_dbm': }
  apache::mod { 'authz_default': }
  apache::mod { 'authz_groupfile': }
  apache::mod { 'authz_host': }
  apache::mod { 'authz_owner': }
  apache::mod { 'authz_user': }
  apache::mod { 'autoindex': }
  class { 'apache::mod::cache': }
  class { 'apache::mod::cgi': }
  apache::mod { 'deflate': }
  apache::mod { 'dir': }
  apache::mod { 'env': }
  apache::mod { 'expires': }
  apache::mod { 'ext_filter': }
  apache::mod { 'include': }
  apache::mod { 'info': }
  apache::mod { 'ldap': }
  apache::mod { 'mime': }
  apache::mod { 'mime_magic': }
  apache::mod { 'negotiation': }
  class { 'apache::mod::proxy': }
  apache::mod { 'proxy_balancer': }
  apache::mod { 'proxy_ftp': }
  apache::mod { 'rewrite': }
  apache::mod { 'setenvif': }
  apache::mod { 'speling': }
  apache::mod { 'status': }
  apache::mod { 'suexec': }
  apache::mod { 'usertrack': }
  apache::mod { 'vhost_alias': }
}
