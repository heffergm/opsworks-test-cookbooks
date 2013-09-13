name             'postgiswrap'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures postgis'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.8'

%w{ apt postgresql sysctl }.each do |dep|
    depends dep
end

%w{ ubuntu }.each do |os|
    supports os
end

