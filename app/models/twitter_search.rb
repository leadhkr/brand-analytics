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
    Tweet.find_tweets(self.id).to_a
  end

  def average_sentiment
    aggregate_score = sentiment_array.reduce(0) do |accumulator, element|
      accumulator + element.sentiment_percentage
    end
    (aggregate_score / self.tweets.count).round(2)
  end

  def self.twitter_search_comparison(twitter_search)
    summed = search_sentiments(twitter_search)
    counted = search_sentiment_count(twitter_search)
    average_sentiments(summed, counted)
  end

  def self.search_sentiments(twitter_search)
    TwitterSearch.where(search_query: twitter_search.search_query).joins(tweets: :sentiment).group('twitter_searches.id').sum(:sentiment_percentage)
  end

  def self.search_sentiment_count(twitter_search)
    TwitterSearch.where(search_query: twitter_search.search_query).joins(tweets: :sentiment).group('twitter_searches.id').count(:sentiment_percentage)
  end

  def self.average_sentiments(summed, counted)
    averaged = summed.values.zip(counted.values).collect {|sum, count| sum / count}
    summed.keys.zip(averaged).each_with_object({}) {|(id, averaged), averaged_hash| averaged_hash[id] = averaged }
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