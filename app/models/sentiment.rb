# == Schema Information
#
# Table name: sentiments
#
#  id              :integer          not null, primary key
#  sentiment_score :integer
#  polarity_score  :integer
#  record_id       :integer
#  record_type     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

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

  def sentiment_percentage
    self.sentiment_score / Parser.words(self.record).length * 100
  end
end
