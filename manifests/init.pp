# this is my base profile

class base_profile {
  $tmpdir = $::operatingsystem ? {
    'Windows'          => 'C:/tempdir',
    default            => '/tempdir',
  }

  user { 'elvis':
    ensure => present,
    groups  => 'base_users',
  }
  group { 'base_users':
    ensure => present,
  }
  file { $tmpdir:
    ensure => 'directory',
  }
  package { 'mysql':
    ensure => latest,
  }
}
