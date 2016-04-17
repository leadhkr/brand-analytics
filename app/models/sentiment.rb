class Sentiment < ActiveRecord::Base
  belongs_to :record, polymorphic: true

  def display_sentiment
    if self.sentiment_score > 0
      "Positive"
    elsif self.sentiment_score < 0
      "Negative"
    else
      "Neutral"
    end
  end
end
