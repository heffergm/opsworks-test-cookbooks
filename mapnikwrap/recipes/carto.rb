#
# Cookbook Name:: mapnikwrap
# Recipe:: carto
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'

git 'openstreetmap_carto' do
  repository 'https://github.com/gravitystorm/openstreetmap-carto.git'
  reference 'master'
  action :sync
  destination '/opt/openstreetmap-carto'
end
