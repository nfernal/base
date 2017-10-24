default['base']['additional_cw_metrics'][:user] = 'cw_monitoring'
default['base']['additional_cw_metrics'][:group] = 'cw_monitoring'
default['base']['additional_cw_metrics'][:home_dir] = "/home/#{node['base']['additional_cw_metrics'][:user]}"
default['base']['additional_cw_metrics']['version'] = '1.2.1'
default['base']['additional_cw_metrics']['base_url'] = 'http://aws-cloudwatch.s3.amazonaws.com/downloads'
default['base']['additional_cw_metrics']['zip'] = "CloudWatchMonitoringScripts-#{node['base']['additional_cw_metrics']['version']}.zip"
default['base']['additional_cw_metrics']['src'] = "#{node['base']['additional_cw_metrics']['base_url']}/#{node['base']['additional_cw_metrics']['zip']}"
default['base']['additional_cw_metrics']['checksum'] = 'e31110347aa1727dcfc966f48ab93fecbbd672713e5b18ea22cd1deed62e54b3'

default['base']['additional_cw_metrics']['pkgs'] = %w(
  perl-DateTime
  perl-CPAN
  perl-Net-SSLeay
  perl-IO-Socket-SSL
  perl-Digest-SHA
  gcc
  zip
  unzip
  perl(CPAN::Meta::YAML)
)

default['base']['additional_cw_metrics']['perl_pkgs'] = %w(
  LWP::Protocol::https
  Sys::Syslog
  Switch
)

default['base']['additional_cw_metrics'][:options] = %w(
  --disk-space-util
  --disk-path=/
  --disk-space-used
  --disk-space-avail
  --swap-util
  --swap-used
  --mem-util
  --mem-used
  --mem-avail
)

default['base']['additional_cw_metrics'][:cron_minutes] = 5
