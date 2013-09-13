
default.mapnik[:ubuntu][:ppa] = "v2.1.0"
default.mapnik[:ubuntu][:key] = "5D50B6BA"
default.mapnik[:ubuntu][:uri] = "http://ppa.launchpad.net/mapnik/#{node.mapnik[:ubuntu][:ppa]}/ubuntu"
default.mapnik[:ubuntu][:packages] = ["libmapnik2-dev", "mapnik-utils", "python-mapnik2"]

default.mapnik[:ubuntu][:boost_repo] = "http://ppa.launchpad.net/mapnik/boost/ubuntu"
