# A class to install task-spooler
class zpr::task_spooler (
  $ensure      = latest,
  $pkg_name    = $zpr::params::tsp_pkg_name,
  $home        = $zpr::params::home,
  $user        = $zpr::params::user,
  $tsp_dir     = "${home}/task_spooler",
  $slots       = $zpr::params::slots,
  $maxfinished = $zpr::params::maxfinished,
) inherits zpr::params {

  $tsp_options = [
    "export TS_SLOTS=${slots}",
    "export TS_MAXFINISHED=${maxfinished}",
    "export TMPDIR=${tsp_dir}",
    "export TS_SAVELIST=${tsp_dir}"
  ]

  package { $pkg_name:
    ensure => $ensure
  }

  file_line { 'source .tsprc':
    ensure => present,
    line   => 'source .tsprc',
    path   => "${home}/.profile"
  }

  file {
    $tsp_dir:
      ensure => directory,
      owner  => $user,
      group  => $user;
    "${home}/.tsprc":
      ensure  => present,
      owner   => $user,
      group   => $user,
      mode    => '0500',
      content => join( $tsp_options, "\n" )
  }

  cron { 'tsp_to_file':
    command => "export TMPDIR=${tsp_dir}; tsp > ${home}/zpr_proxy_tsp.out",
    user    => $user
  }
}
