# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache
class apache (
  String   $install_name,
  Array    $config_paths,
  String   $service_name,
  String   $vhost_dir,
) {
  contain apache::install
  contain apache::config
  contain apache::service

  Class['apache::install']
  # class apache::install runs before apache::config
  -> Class['apache::config']
  # ~> == subscribe, restart the service everytime the config has been changed
  ~> Class['apache::service']
}
