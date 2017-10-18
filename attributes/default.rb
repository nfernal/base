default['custom_hostname'] = nil
default['base']['domain'] = 'jibakurei.com'
default['set_fqdn'] = "#{node['hostname']}.#{node['base']['domain']}"
default['selinux']['status'] = 'Permissive'
