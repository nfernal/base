#
# Cookbook:: base
# Recipe:: motd
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# require 'net/http'

# aws_metadata = Net::HTTP.get('http://169.254.169.254/latest/meta-data')

template '/etc/motd' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '0644'
end
