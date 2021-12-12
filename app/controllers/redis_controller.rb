class RedisController < ApplicationController
  def show
    Redis.current.set('mykey', 'Hello')
    Redis.current.set("testkey", "mebee")
  end
end
