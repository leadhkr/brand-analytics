# == Schema Information
#
# Table name: keyword_values
#
#  id         :integer          not null, primary key
#  keyword_id :integer
#  value_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class KeywordValue < ActiveRecord::Base
  belongs_to :keyword
  belongs_to :value
end
