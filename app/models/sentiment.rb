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
end