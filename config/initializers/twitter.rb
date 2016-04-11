require 'twitter'

twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV[CONSUMER_KEY]
  config.consumer_secret = ENV[CONSUMER_SECRET]
  config.oauth_token = ENV[YOUR_ACCESS_TOKEN]
  config.oauth_token_secret = ENV[YOUR_ACCESS_SECRET]
end
