class common::roles::mysql {
  class { '::mysql::server':
    override_options => {
      mysqld => { bind-address => '0.0.0.0'} #Allow remote connections
    }
  }

  create_resources(mysql::db, hiera_hash(databases))

}
