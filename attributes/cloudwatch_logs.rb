default['cwlogs']['region'] = 'us-west-2'
default['cwlogs']['state_file_dir'] = '/var/awslogs/state'
default['cwlogs']['state_file_name'] = 'agent-state'
default['cwlogs']['attempt_upgrade'] = true

default['cwlogs']['logfiles']['server_access_logs'] = {
  :log_stream_name  => '{hostname}-{instance_id}',
  :log_group_name   => '/var/log/messages',
  :file             => '/var/log/messages',
  :datetime_format  => '%d/%b/%Y:%H:%M:%S %z',
  :initial_position => 'end_of_file'
}

default['cwlogs']['logfiles']['server_access_logs'] = {
  :log_stream_name  => '{hostname}-{instance_id}',
  :log_group_name   => '/var/log/secure',
  :file             => '/var/log/secure',
  :datetime_format  => '%d/%b/%Y:%H:%M:%S %z',
  :initial_position => 'end_of_file'
}
