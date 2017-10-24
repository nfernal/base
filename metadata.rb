name 'base'
maintainer 'The Authors'
maintainer_email 'nferna13@outlook.com'
license 'All Rights Reserved'
description 'Installs/Configures base'
long_description 'Installs/Configures base'
version '0.1.1'
chef_version '>= 12.21.14' if respond_to?(:chef_version)
issues_url 'https://github.com/nfernal/base/issues'
source_url 'https://github.com/nfernal/base'

depends 'hostname'
depends 'selinux'
depends 'users'
depends 'cron'
depends 'zipfile'
depends 'cloudwatch-logs'


