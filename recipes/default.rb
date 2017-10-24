#
# Cookbook:: base
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

## symlink to chef embedded ruby.  This is for running ruby scripts not for actual Ruby/Rails deployments.
link '/usr/local/bin/ruby' do
  to '/opt/chef/embedded/bin/ruby'
  link_type :symbolic
end

include_recipe 'base::hostname'

selinux_state "SELinux #{node['selinux']['status'].capitalize}" do
  action node['selinux']['status'].downcase.to_sym
end

service 'iptables' do
  supports :status => true, :restart => true, :reload => true
  action [:stop, :disable]
end

include_recipe 'base::users'
include_recipe 'base::motd'
include_recipe 'base::cloudwatch_metrics'
include_recipe 'cloudwatch-logs::default'
include_recipe 'base::cleanup'
