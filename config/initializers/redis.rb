require 'redis'
 
module DataStore
  def self.redis
    @redis ||= Redis.new(url: 'redis://redis:6379/0')
  end
end