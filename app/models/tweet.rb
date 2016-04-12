class Tweet < ActiveRecord::Base
  belongs_to :document

  validates :text, :favorite_count, :retweets, :tweet_date, :user_verified, presence: true

  # Return tweet objects
  def self.statuses(query, language: 'English', result_type: 'recent', tweet_count: 20)
    language_code = find_language_code(language)
    results = call_twitter_api(query, language_code, result_type)
    limited_tweets(results, tweet_count)
  end

  # Return string of tweets
  def self.stringify_tweets(tweets)
    tweets.inject(String.new) { |accumulator, element| accumulator + element.text }
  end

  private

  def self.call_twitter_api(query, language_code, result_type)
    $twitter.search(query, lang: language_code, result_type: result_type)
  end

  def self.find_language_code(language)
    LanguageCode.find_by_name(language).code
  end

  def self.limited_tweets(tweets, tweet_count)
    tweets.first(tweet_count)
  end
end
