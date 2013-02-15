class { 'apache': }
class { 'apache::mod::php': }
class { 'apache::mod::cgi': }
class { 'apache::mod::userdir': }
class { 'apache::mod::disk_cache': }
class { 'apache::mod::proxy_http': }
class { 'apache::mod::proxy': }
class { 'apache::mod::cache': }