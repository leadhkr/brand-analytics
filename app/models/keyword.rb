# == Schema Information
#
# Table name: keywords
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Keyword < ActiveRecord::Base
  has_many :document_keywords
  has_many :documents, through: :document_keywords
  has_many :keyword_values
  has_many :values, through: :keyword_values

  validates :name, presence: true
end
