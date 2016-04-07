class KeywordValue < ActiveRecord::Base
  belongs_to :keyword
  belongs_to :value
end
