#
# Cookbook:: base
# Recipe:: users
#
# Copyright:: 2017, The Authors, All Rights Reserved.

users_manage 'devops' do
  group_id 3000
  action [:remove, :create]
end

users_manage 'go' do
  group_id 630
  action [:remove, :create]
end

%w(devops go).each do |group|
  users_manage group do
    action [:remove, :create]
  end
end
