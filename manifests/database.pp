# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include adrien_flask::database
class adrien_flask::database {

package { 'postgresql':
  ensure => present,
  }

service { 'postgresql':
  ensure  => running,
  require => Package[postgresql],
  }

notice("Database connecté")

}
