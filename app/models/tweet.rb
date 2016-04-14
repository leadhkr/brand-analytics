# == Schema Information
#
# Table name: tweets
#
#  id                :integer          not null, primary key
#  text              :text
#  favorite_count    :integer
#  retweets          :integer
#  tweet_date        :date
#  user_verified     :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  document_id       :integer
#  profile_image_url :string
#  name              :string
#  location          :string
#  twitter_search_id :integer
#

class Tweet < ActiveRecord::Base
  belongs_to :twitter_search
  has_one :sentiment, as: :record

  validates :text, :favorite_count, :retweets, :tweet_date, :user_verified, presence: true

  def self.statuses(query, language: 'English', result_type: 'recent', tweet_count: 50)
    language_code = find_language_code(language)
    results = call_twitter_api(query, language_code, result_type)
    limited_tweets(results, tweet_count)
  end

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

  def most_positive_tweet_for_search(twitter_search)
    Tweet.where("twitter_search_id = ?", twitter_search.id).joins(:sentiment).maximum(:sentiment_percentage)
  end

   def most_positive_tweet_for_search(twitter_search)
    Tweet.where("twitter_search_id = ?", twitter_search.id).joins(:sentiment).minimum(:sentiment_percentage)
  end 
end
