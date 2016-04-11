class Document < ActiveRecord::Base
  belongs_to :group
  has_many :document_keywords
  has_many :keywords, through: :document_keywords

  validates :text, :title, presence: true
  validates :title, length: { minimum: 3 }

  accepts_nested_attributes_for :keywords

  def sentiment
      if self.sentiment_score > 0
        "positive"
      elsif self.sentiment_score < 0
        "negative"
      else
        "neutral"
      end
  end


end
