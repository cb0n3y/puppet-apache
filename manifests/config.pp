# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::config
class apache::config {
  $apache::config_paths.each |Array[String] $config_path| {
    file { $apache::config_path: 
      ensure  => directory,
    }
  }
}
