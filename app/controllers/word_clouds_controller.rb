class WordCloudsController < ApplicationController
  def show
    @twitter_search = TwitterSearch.find(params[:id])
    @frequency_list = @twitter_search.word_value_pairs
    render json: @frequency_list
  end
end
