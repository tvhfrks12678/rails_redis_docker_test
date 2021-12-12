class RedisSamplesController < ApplicationController
  def hoge
    Redis.current.set("testkey", "mebee")
    Rails.cache.write('name', 'hogehoge') if params[:id].to_i > 0
    render json: Rails.cache.exist?('name')
  end
end
