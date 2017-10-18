default['cwlogs']['logfiles']['server_access_logs'] = {
  :log_stream_name  => '{instance_id}-{hostname}',
  :log_group_name   => 'server_access_logs',
  :file             => '/var/log/secure',
  :datetime_format  => '%d/%b/%Y:%H:%M:%S %z',
  :initial_position => 'end_of_file'
}
