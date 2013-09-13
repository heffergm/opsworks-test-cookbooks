#
# Cookbook Name:: postgiswrap
# Recipe:: sysctl
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

sysctl_param 'vm.swappiness' do
  value 0
end

mem = node[:memory][:total]
sysctl_param 'kernel.shmmax' do
  value mem.to_i * 1024
end
