class apache::mod::python {
  class { 'apache': }
  apache::mod { 'python': }
}


