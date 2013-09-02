# == Class: hierapkgs
#
# Install a set of packages from a merged Hiera array.
#
# === Parameters
#
# [*packages*]
#   Array of packages to install; merged from hierapkgs::package_list by
#   default.  Stdlib's "ensure_packages" is used to install the packages,
#   so there will be no risk of duplicated package resources.
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
