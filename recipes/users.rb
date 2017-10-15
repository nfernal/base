#
# Cookbook:: base
# Recipe:: users
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
node['base']['groups'].each do |grp|
  users_manage grp[:groupname] do
    group_id grp[:groupid]
    action [:remove, :create]
  end
end
