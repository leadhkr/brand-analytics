# == Schema Information
#
# Table name: values
#
#  id         :integer          not null, primary key
#  rating     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Value < ActiveRecord::Base
  has_many :keyword_values
  has_many :keywords, through: :keyword_values
end
