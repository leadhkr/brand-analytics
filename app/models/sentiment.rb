class Sentiment < ActiveRecord::Base
  belongs_to :record, polymorphic: true

  def display_sentiment
    if self.sentiment_score > 0
      "positive"
    elsif self.sentiment_score < 0
      "negative"
    else
      "neutral"
    end
  end

  def self.sentiments_for_twitter_search
    Sentiment.includes(record: :twitter_search).where(record_type: 'Tweet')
  end

end
