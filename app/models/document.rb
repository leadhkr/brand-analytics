class Document < ActiveRecord::Base
  belongs_to :group
  has_many :tweets
  has_many :document_keywords
  has_many :keywords, through: :document_keywords
  has_one :sentiment, as: :record

  validates :text, :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :text, length: { minimum: 5 }
  validate :file_extention

  def file_extention
    valid_file_types = [ 'plain' ] # Add additional file types when supported
    errors.add(:file_type, "Please enter a valid file type") unless valid_file_types.include?(file_type)
  end

  def self.parse_file_type(content_type)
    content_type.match(/(?<=\/)[^\]]+/).to_s
  end

  accepts_nested_attributes_for :keywords
end
