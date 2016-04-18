class Tweet < ActiveRecord::Base
  belongs_to :twitter_search
  has_one :sentiment, as: :record

  validates :text, :favorite_count, :retweets, :tweet_date, :user_verified, presence: true

  def self.stringify_tweets(tweets)
    tweets.inject(String.new) { |accumulator, element| accumulator + element.text }
  end

  private

  def most_positive_tweet_for_search(twitter_search)
    Tweet.where("twitter_search_id = ?", twitter_search.id).joins(:sentiment).maximum(:sentiment_percentage)
  end

   def most_negative_tweet_for_search(twitter_search)
    Tweet.where("twitter_search_id = ?", twitter_search.id).joins(:sentiment).minimum(:sentiment_percentage)
  end

  def self.find_tweets(twitter_search_id)
    self.select("text, name, favorite_count, retweets, tweet_date, user_verified, profile_image_url, location, sentiment_score, polarity_score, sentiment_percentage").joins(:sentiment).where("twitter_search_id = ?", twitter_search_id)
  end
end
