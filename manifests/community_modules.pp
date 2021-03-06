class prosody::community_modules (
  $ensure = 'present',
  $path = '/var/lib/prosody/modules',
  $type = 'hg',
  $source = 'https://code.google.com/p/prosody-modules/',
  $revision = undef,
) {
  ensure_packages(['mercurial'])

  vcsrepo { $path:
    ensure   => $ensure,
    provider => $type,
    source   => $source,
    revision => $revision,
    require  => Package['mercurial'],
  }
}
