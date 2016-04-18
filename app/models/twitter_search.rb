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

  def average_sentiment
    aggregate_score = tweets_array.reduce(0) { |accumulator, element| accumulator + element.sentiment_percentage }
    (aggregate_score / self.tweets.count).round(2)
  end

  def word_value_pairs
    tweets_string = Parser.join_tweets(tweets_array)
    split_words = Parser.words(tweets_string)
    word_count = Parser.word_count(split_words)
    keyword_count = Parser.keyword_values
    results = Parser.find_matches(word_count, keyword_count)
    results.map { |key, value| {"text": key.downcase, "size": value.abs * 10} }
  end

  def sentiment_image
    if self.display_average_sentiment == 'Positive'
      'green-arrow.png'
    elsif self.display_average_sentiment == 'Negative'
      'red-arrow.png'
    elsif self.display_average_sentiment == 'Neutral'
      'neutral-arrow.png'
    end
  end

  def sentiment_label
    if self.display_average_sentiment == 'Positive'
      'label label-success'
    elsif self.display_average_sentiment == 'Negative'
      'label label-danger'
    elsif self.display_average_sentiment == 'Neutral'
      'label label-default'
    end
  end

  def display_average_sentiment
    if self.average_sentiment > 0
      "Positive"
    elsif self.average_sentiment < 0
      "Negative"
    else
      "Neutral"
    end
  end

  def twitter_search_comparison
    summed = search_sentiment_sum
    counted = tweet_count_for_search(summed)
    average_sentiments(summed, counted)
  end

  private

  def tweets_array
    Tweet.find_tweets(self.id).to_a
  end

  def search_sentiment_sum
    TwitterSearch.where(search_query: self.search_query).joins(tweets: :sentiment).group('twitter_searches.id').sum(:sentiment_percentage)
  end

  def tweet_count_for_search(summed)
    Tweet.where(twitter_search_id: summed.keys).group(:twitter_search_id).count()
  end

  def average_sentiments(summed, counted)
    summed.each_with_object({}) { |(id, sum), averaged_hash| averaged_hash[id] = sum / counted[id] }
  end
end
