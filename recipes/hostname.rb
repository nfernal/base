#
# Cookbook:: base
# Recipe:: hostname
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'hostname'

ohai 'reload' do
  action :reload
end
