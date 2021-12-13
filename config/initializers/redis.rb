# Redis.current = Redis.new
# Redis.new(:host => '127.0.0.1', :port => 6379)
# Redis.current = Redis.new(:host => 'redis', :port => 6379)
require 'redis'

REDIS = Redis.new(host: 'redis', port: 6379)
# REDIS = Redis.new(host: 'redis', port: 6379)
# uri = URI.parse(ENV["REDIS"])
# REDIS = Redis.new(host: uri.host, port: uri.port)
# Redis.current = Redis.new(:host => 'redis', :port => 6379)