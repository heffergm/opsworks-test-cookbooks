
case node[:platform]
when 'ubuntu'
  include_recipe 'apt'

  apt_repository 'mapnik' do
    uri node.mapnik[:ubuntu][:uri]
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key node.mapnik[:ubuntu][:key]
  end

  node.mapnik[:ubuntu][:packages].each do |pkg|
    package pkg do
      action :install
    end
  end

else
  Chef::Log.error("This recipe only works on ubuntu-based distributions")
end
