class WordCloudsController < ApplicationController
  def show
    if params[:documentId]
      @document = Document.find(params[:documentId])
      @frequency_list = @document.word_value_pairs
    elsif params[:twitterSearchId]
      @twitter_search = TwitterSearch.find(params[:twitterSearchId])
      @frequency_list = @twitter_search.word_value_pairs
    end
    render json: @frequency_list
  end
end
