# == Schema Information
#
# Table name: language_codes
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LanguageCode < ActiveRecord::Base
end
