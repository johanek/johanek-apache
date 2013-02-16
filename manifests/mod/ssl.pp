class apache::mod::ssl {
  require 'apache'
  apache::mod { 'ssl': }
}
