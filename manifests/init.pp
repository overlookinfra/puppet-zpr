# zpr globals class
class zpr (
  $user               = undef,
  $group              = undef,
  $home               = undef,
  $uid                = undef,
  $gid                = undef,
  $storage            = undef,
  $worker_tag         = undef,
  $readonly_tag       = undef,
  $env_tag            = undef,
  $backup_dir         = undef,
  $pub_key            = undef,
  $sanity_check       = undef,
  $permitted_commands = undef,
  $key_name           = undef,
  $tsp_pkg_name       = undef,
  $slots              = undef,
  $maxfinished        = undef,
  $aws_key_file       = undef,
  $aws_access_key     = undef,
  $aws_secret_key     = undef,
  $gpg_passphrase     = undef,
  $gpg_key_grip       = undef,
  $duplicity_version  = undef,
) {
  $globals_user               = $user
  $globals_group              = $group
  $globals_home               = $home
  $globals_uid                = $uid
  $globals_gid                = $gid
  $globals_storage            = $storage
  $globals_worker_tag         = $worker_tag
  $globals_readonly_tag       = $readonly_tag
  $globals_env_tag            = $env_tag
  $globals_backup_dir         = $backup_dir
  $globals_pub_key            = $pub_key
  $globals_sanity_check       = $sanity_check
  $globals_permitted_commands = $permitted_commands
  $globals_key_name           = $key_name
  $globals_tsp_pkg_name       = $tsp_pkg_name
  $globals_slots              = $slots
  $globals_maxfinished        = $maxfinished
  $globals_aws_key_file       = $aws_key_file
  $globals_aws_access_key     = $aws_access_key
  $globals_aws_secret_key     = $aws_secret_key
  $globals_gpg_passphrase     = $gpg_passphrase
  $globals_gpg_key_grip       = $gpg_key_grip
  $globals_duplicity_version  = $duplicity_version
}
