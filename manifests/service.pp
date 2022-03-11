# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::service
class apache::service {
  service { $apache::service_name:
    ensure => running,
  }
}
