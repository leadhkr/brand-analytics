class Document < ActiveRecord::Base
  belongs_to :group
  has_many :document_keywords
  has_many :keywords, through: :document_keywords

  validates :text, :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :title, uniqueness: { scope: :group, message: 'Must have unique title' }

  accepts_nested_attributes_for :keywords
end
