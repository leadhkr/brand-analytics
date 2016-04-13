# == Schema Information
#
# Table name: twitter_searches
#
#  id           :integer          not null, primary key
#  search_query :string
#  description  :text
#  group_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TwitterSearch < ActiveRecord::Base
  has_many :tweets
  belongs_to :group

  validates :search_query, presence: true
  validates :search_query, format: {with: /\A^(#|@)/, on: :create, message: "Search query must begin with @ or #"}

  def parse_tweets
    tweets = Tweet.joins(:twitter_search).where(twitter_search_id: self.id)
      tweets.map do |tweet|
      Parser.text_score(tweet)
    end
  end

  def sentiment_array
    self.tweets.map do |tweet|
      tweet.sentiment.sentiment_percentage
    end
  end

  def aggregate_sentiment
    sentiment_array.reduce(:+) / self.tweets.count
  end
end
