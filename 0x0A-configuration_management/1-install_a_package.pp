# Install Flask using pip3
package { 'python3-pip':
  ensure => 'installed',
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install flask==2.1.0',
  path        => ['/usr/bin', '/usr/local/bin'],
  refreshonly => true,
  subscribe   => Package['python3-pip'],
}
