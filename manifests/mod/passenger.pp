class apache::mod::passenger {
  class { 'apache': }

  apache::mod { 'passenger': }
}
