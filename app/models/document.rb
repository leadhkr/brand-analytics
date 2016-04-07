class Document < ActiveRecord::Base
  belongs_to :group
  has_many :document_keywords
  has_many :keywords, through: :document_keywords

  validates :text, presence: true
end
