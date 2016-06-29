# vagrant-base

A collection of puppet manifests to give a quick start to projects which require simple services.

# Usage

Create a file called `vagrant.yaml` at the top level of this project. This file defines all the machines you want available. The structure is the same as `defaults.yaml`. When a property isn't available inb `vagrant.yaml` it fetches the defaults instead.

`vagrant.yaml` can contain any number of machine definitions as long as they all have unique names.

More documentation to come.

# Roles

__empty__ - Nothing is installed, everything is default from the base VM (ubuntu/trusty64 by default).

__mysql__ - Installs a MySQL server and sets it running with the db/users in `puppet/hieradata/roles/mysql.yaml`, configured to allow remote connections by default.

__rethinkdb__ - Installs rethinkdb server and sets it running listening for clients on port 28016
