class TwitterSearch < ActiveRecord::Base
  has_many :tweets, dependent: :destroy
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
    Tweet.find_tweets(self.id).to_a
  end

  def average_sentiment
    aggregate_score = sentiment_array.reduce(0) do |accumulator, element|
      accumulator + element.sentiment_percentage
    end
    (aggregate_score / self.tweets.count).round(2)
  end



  def display_average_sentiment
    if self.average_sentiment > 0
      "positive"
    elsif self.average_sentiment < 0
      "negative"
    else
      "neutral"
    end
  end

end