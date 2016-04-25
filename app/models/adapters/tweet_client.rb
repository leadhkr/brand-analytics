module Adapters
  class TweetClient
    attr_accessor :connection

    def initialize
      @connection = Adapters::TwitterConnection.new
    end

    def find_tweets(query, language_code, result_type, tweet_count)
      tweets = connection.query(query, language_code, result_type).first(tweet_count)
      create_tweets(tweets)
    end

    def create_tweets(tweets)
      tweets.map do |tweet|
        Tweet.new(
          text: tweet.text, favorite_count: tweet.favorite_count, retweets: tweet.retweet_count, tweet_date: tweet.created_at.to_date,
          user_verified: tweet.user.verified?, profile_image_url: tweet.user.profile_image_url.to_s, name: tweet.user.screen_name, location: tweet.user.location
        ).tap { |current_tweet| current_tweet.save if current_tweet.valid? }
      end
    end



  end
end
