class Value < ActiveRecord::Base
  has_many :keyword_values
  has_many :keywords, through: :keyword_values
end
