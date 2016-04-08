class Keyword < ActiveRecord::Base
  has_many :document_keywords
  has_many :documents, through: :document_keywords
  has_many :keyword_values
  has_many :values, through: :keyword_values

  validates :word, presence: true
end
