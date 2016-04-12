class Document < ActiveRecord::Base
  belongs_to :group
  has_many :tweets
  has_many :document_keywords
  has_many :keywords, through: :document_keywords
  has_one :document_sentiment

  validates :text, :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :text, length: { minimum: 5 }

  accepts_nested_attributes_for :keywords

  def sentiment
    if sentiment_score > 0
      "positive"
    elsif sentiment_score < 0
      "negative"
    else
      "neutral"
    end
  end


  def sentiment_percentage
    "%.2f" % (self.sentiment_score / Parser.words(self).length * 100) + "%"
  end

end
