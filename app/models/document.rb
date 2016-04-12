class Document < ActiveRecord::Base
  belongs_to :group
  has_many :tweets
  has_many :document_keywords
  has_many :keywords, through: :document_keywords

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
end
