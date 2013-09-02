# == Class: hierapkgs
#
# Install a set of packages from a merged Hiera array.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Examples
#
#  Given this in a matching Hiera YAML file:
#
#    hierapkgs::package_list: [ 'ack', 'lsof', 'tree' ]
#
#  The following manifest:
#
#    include hierapkgs
#
#  Will install the "ack", "lsof" and "tree" packages.
#
# === Authors
#
# Andrew Leonard
#
# === Copyright
#
# Copyright 2013 Andrew Leonard
#
class hierapkgs ( $packages = hiera_array('hierapkgs::package_list') ) {

  ensure_packages($packages)

}
