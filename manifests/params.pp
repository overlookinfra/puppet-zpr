class zpr::params {

  # User configuration
  $user         = hiera('zpr::user', 'zpr_proxy')
  $group        = hiera('zpr::group', $user)
  $home         = hiera('zpr::home', '/var/lib/zpr')
  $uid          = hiera('zpr::uid', '50555')
  $gid          = hiera('zpr::gid', $uid)

  # Job parameters
  $zpool        = hiera('zpr::zpool')
  $server       = hiera('zpr::server')
  $gpg_key_id   = hiera('zpr::gpg_key_id')
  $security     = hiera('zpr::security')
  $permissions  = hiera('zpr::permissions')

  # Tag configurations. Useful for collecting tags on workers
  $user_tag     = hiera('zpr::user_tag', 'zpr_user')
  $storage_tag  = hiera('zpr::storage_tag', 'storage')
  $worker_tag   = hiera('zpr::worker_tag', 'worker')
  $readonly_tag = hiera('zpr::readonly_tag', 'readonly')
  $source_user  = hiera('zpr::source_user', false)

  $backup_dir   = hiera('zpr::backup_dir', '/srv/backup')

  # For manual public key placement
  $key_name     = hiera('zpr::key_name', undef)
  $pub_key      = hiera('zpr::pub_key', undef)

  $tsp_pkg_name = hiera('zpr::tsp_pkg_name', 'task-spooler')

  # AWS access keys
  $aws_key_file   = hiera('zpr::aws_key_file', '.aws')
  $aws_access_key = hiera('zpr::aws_access_key', undef)
  $aws_secret_key = hiera('zpr::aws_secret_key', undef)

  # GPG key data
  $gpg_passphrase = hiera('zpr::gpg_passphrase', undef)
  $gpg_key_grip   = hiera('zpr::gpg_key_grip', undef)

  # Limit exporting of resources
  $limit_exports = hiera('zpr::limit_exports', true)
}
