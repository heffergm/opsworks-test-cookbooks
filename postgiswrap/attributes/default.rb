# versions
default[:postgis][:version]                 = '2.0'
default[:postgresql][:version]              = '9.1'

# config
default[:postgresql][:ssl]                  = false
default[:postgresql][:hba_file]             = "/etc/postgresql/#{node[:postgresql][:version]}/main/pg_hba.conf"
default[:postgresql][:ident_file]           = "/etc/postgresql/#{node[:postgresql][:version]}/main/pg_ident.conf"
default[:postgresql][:external_pid_file]    = "/var/run/postgresql/#{node[:postgresql][:version]}-main.pid"
default[:postgresql][:data_directory]       = "/var/lib/postgresql/#{node["postgresql"]["version"]}/main"
default[:postgresql][:password][:postgres]  = '6b211d71ec225c69c66944eae0e524c4'
default[:postgresql][:data_directory]       = '/opt/postgresql/data'

# hba
default[:postgresql][:pg_hba] =  [
  { :type => 'local', :db => 'all', :user => 'gisuser', :addr => '', :method => 'peer' },
  { :type => 'local', :db => 'all', :user => 'root',    :addr => '', :method => 'ident' }
]

# db settings
default[:postgresql][:work_mem]             = '512MB'
default[:postgresql][:temp_buffers]         = '128MB'
default[:postgresql][:shared_buffers]       = '2GB'
default[:postgresql][:checkpoint_segments]  = '20'
default[:postgresql][:maintenance_work_mem] = '1GB'

