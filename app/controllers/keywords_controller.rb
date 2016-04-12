# == Schema Information
#
# Table name: keywords
#
#  id         :integer          not null, primary key
#  word       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class KeywordsController < ApplicationController
  
  def create
    Keyword.create(keyword_params)
  end

  private

  def keyword_params
    params.require(:keyword, :document_id).permit(:word)
  end
  
end
