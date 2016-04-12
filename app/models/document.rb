# == Schema Information
#
# Table name: documents
#
#  id              :integer          not null, primary key
#  text            :text
#  group_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  title           :string
#  sentiment_score :float
#

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
