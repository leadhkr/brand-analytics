class Sentiment < ActiveRecord::Base
  belongs_to :record, polymorphic: true

  def sentiment_image
    if self.display_sentiment == 'positive'
      'green-arrow.png'
    elsif self.display_sentiment == 'negative'
      'red-arrow.png'
    elsif self.display_sentiment == 'neutral'
      'red-arrow.png'
    end
  end

  def display_sentiment
    if self.sentiment_score > 0
      "Positive"
    elsif self.sentiment_score < 0
      "Negative"
    else
      "Neutral"
    end
  end

  def self.sentiments_for_twitter_search
    Sentiment.includes(record: :twitter_search).where(record_type: 'Tweet')
  end
end
