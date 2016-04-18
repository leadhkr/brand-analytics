class Sentiment < ActiveRecord::Base
  belongs_to :record, polymorphic: true

  def sentiment_image
    if self.display_sentiment == 'Positive'
      'green-arrow.png'
    elsif self.display_sentiment == 'Negative'
      'red-arrow.png'
    elsif self.display_sentiment == 'Neutral'
      'neutral-arrow.png'
    end
  end

  def sentiment_label
    if self.display_sentiment == 'Positive'
      'label label-success'
    elsif self.display_sentiment == 'Negative'
      'label label-danger'
    elsif self.display_sentiment == 'Neutral'
      'label label-default'
    end
  end

  def display_sentiment
    if self.sentiment_percentage > 0
      "Positive"
    elsif self.sentiment_percentage < 0
      "Negative"
    else
      "Neutral"
    end
  end

  def self.sentiments_for_twitter_search
    Sentiment.includes(record: :twitter_search).where(record_type: 'Tweet')
  end
end
