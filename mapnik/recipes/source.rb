
include_recipe 'ark'
include_recipe 'build-essential'

case node[:platform]
when "ubuntu"
  # https://github.com/mapnik/mapnik/wiki/UbuntuInstallation
  include_recipe 'apt'

  apt_repository 'mapnik_boost' do
    uri node.mapnik[:ubuntu][:boost_repo]
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key node.mapnik[:ubuntu][:key]
  end

  %|libboost-dev libboost-filesystem-dev libboost-program-options-dev
  libboost-python-dev libboost-regex-dev libboost-system-dev
  libboost-thread-dev|.each do |pkg|
    package pkg do
      action :upgrade
    end
  end

  dependencies = %w|
  python-all-dev libxml2 libxml2-dev libfreetype6 libfreetype6-dev libjpeg-dev
  libltdl7 libltdl-dev libpng-dev libproj-dev libgeotiff-dev libtiff-dev
  libtiffxx0c2 libcairo2 libcairo2-dev python-cairo python-cairo-dev
  libcairomm-1.0-1 libcairomm-1.0-dev ttf-unifont ttf-dejavu ttf-dejavu-core
  ttf-dejavu-extra libsqlite3-dev
  |

  dependencies.each do |pkg|
    package pkg do
      action :upgrade
    end
  end

  ark "install_mapnik" do
    url  node.mapnik[:download_url]
    extension "tar.gz"
    action [ :configure, :install_with_make ]
  end
else
  Chef::Log.warn("This cookbook is not yet supported on #{node[:platform]}")
end
