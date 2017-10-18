#
# Cookbook:: base
# Recipe:: motd
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'net/http'
require 'uri'
require 'pp'

aws_metadata = Hash.new

node['base']['aws_metadata']['keys'].each do |key|
  aws_metadata["#{key}"] = Net::HTTP.get(URI.parse("http://169.254.169.254/latest/meta-data/#{key}"))
end

template '/etc/motd' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '0644'
  variables({
    aws_metadata: aws_metadata
    })
end
