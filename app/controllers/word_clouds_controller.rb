class WordCloudsController < ApplicationController
  def show
    @twitter_search = TwitterSearch.find(params[:id])
  end
end
