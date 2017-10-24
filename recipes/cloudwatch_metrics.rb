#
# Cookbook:: base
# Recipe:: cloudwatch_metrics
#
# Copyright:: 2017, The Authors, All Rights Reserved.

remote_file "/tmp/#{node['base']['additional_cw_metrics']['zip']}" do
  owner 'root'
  group 'root'
  mode '0644'
  source node['base']['additional_cw_metrics']['src']
  checksum node['base']['additional_cw_metrics']['checksum'].to_s
end

bash 'install something' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
    unzip -o #{node['base']['additional_cw_metrics']['zip']} -d /opt
  EOH
  not_if { Dir.exist?('/opt/aws-scripts-mon') }
end

file "/tmp/#{node['base']['additional_cw_metrics']['zip']}" do
  action :delete
end

cron_d 'cloudwatch_monitoring' do
  minute "*/#{node['base']['additional_cw_metrics'][:cron_minutes]}"
  user 'root'
  command %Q(/opt/aws-scripts-mon/mon-put-instance-data.pl #{(node['base']['additional_cw_metrics'][:options]).join(' ')} || logger -t aws-scripts-mon "status=failed exit_code=$?")
end
