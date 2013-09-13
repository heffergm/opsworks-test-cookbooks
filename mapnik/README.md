# mapnik cookbook

This cookbook installs and configures [Mapnik](http://mapnik.org/)

# Requirements

* "ark" (for `mapnik::source`)
* "build-essential" (for `mapnik::source`)
* "apt" (for `mapnik::source` and `mapnik::ubuntu`)

## Platform

* Ubuntu

# Usage

# Attributes

* `node.mapnik[:version]` - Set up the mapnik version from source. Any tag from [mapnik repository](https://github.com/mapnik/mapnik/tags) is valid

To install Mapnik in Ubuntu-based distributions using official ppas:

* `node.mapnik[:ubuntu][:ppa]` - Set up Ubuntu ppa version, can be `v2.0.2`, `v2.1.0` or `nightly-trunk`.
* `node.mapnik[:ubuntu][:packages]` - Set up a list of packages to install. By default: `["libmapnik2-dev", "mapnik-utils", "python-mapnik2"]`

# Recipes

This cookbook currently provides the following recipes:

## default
This recipe try to install mapnik from source if there is not an offcial repository.

## source
This recipe installs mapnik from source.

## ubuntu
This recipe installs mapnik from official ppas.

# Author

Author:: Mario Rodas
