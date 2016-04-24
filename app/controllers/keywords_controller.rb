class KeywordsController < ApplicationController

  def create
    Keyword.create(keyword_params)
  end

  private

  def keyword_params
    params.require(:keyword, :document_id).permit(:word)
  end

end
