class TweetService

  def self.sanitize_tweets(query, language, result_type, tweet_count)
    tweets = query_to_tweets(query, language, result_type, tweet_count)
    tweet_objects = create_tweets(tweets)
  end

  private

  def self.query_to_tweets(query, language, result_type, tweet_count)
    Tweet.statuses(query, language: language, result_type: result_type, tweet_count: tweet_count)
  end

  def self.create_tweets(tweets)
    tweets.map do |tweet|
      Tweet.new(
        text: tweet.text, favorite_count: tweet.favorite_count, retweets: tweet.retweet_count, tweet_date: tweet.created_at.to_date,
        user_verified: tweet.user.verified?, profile_image_url: tweet.user.profile_image_url.to_s, name: tweet.user.screen_name, location: tweet.user.location
      ).tap { |current_tweet| current_tweet.save if current_tweet.valid? }
    end
  end
end
