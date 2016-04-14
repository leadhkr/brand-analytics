class Document < ActiveRecord::Base
  belongs_to :group
  has_many :document_keywords, dependent: :destroy
  has_many :keywords, through: :document_keywords, dependent: :destroy
  has_one :sentiment, as: :record, dependent: :destroy

  validates :text, :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :text, length: { minimum: 5 }
end
