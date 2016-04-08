# == Schema Information
#
# Table name: document_keywords
#
#  id          :integer          not null, primary key
#  document_id :integer
#  keyword_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DocumentKeyword < ActiveRecord::Base
  belongs_to :document
  belongs_to :keyword
end
