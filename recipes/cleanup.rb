#
# Cookbook:: base
# Recipe:: cleanup
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

## Removing the chef validator private key
file '/etc/maduro-validator.pem' do
  action :delete
end
