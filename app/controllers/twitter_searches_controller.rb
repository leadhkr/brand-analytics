class TwitterSearchesController < ApplicationController
  before_action :find_twitter_search, only: [:show, :destroy]
  before_action :find_group, only: [:show, :create]
  require 'json'

  def new
    @twitter_search = TwitterSearch.new
  end

  def create
    query = params[:twitter_search][:search_query]
    language = LanguageCode.find_by_name(params[:twitter_search][:language_code]).code
    result_type = params[:twitter_search][:result_type]
    tweet_count = params[:twitter_search][:tweet_count].to_i
    @twitter_search = TwitterSearch.new(twitter_search_params)
    @twitter_search.group = @group
    tweets = Adapters::TweetClient.new.find_tweets(query, language, result_type, tweet_count)
    @twitter_search.tweets << tweets

    if @twitter_search.save
      find_or_create_sentiment
      @average_sentiment = @twitter_search.average_sentiment
      render json: {
        twitter_search: @twitter_search,
        twitter_search_path: group_twitter_search_path(@group, @twitter_search),
        average_sentiment: @twitter_search.average_sentiment,
        display_sentiment: @twitter_search.display_average_sentiment
      }
    else
      redirect_to group_path(@group)
    end
  end

  def show
    @average_sentiment = @twitter_search.average_sentiment
    @tweets_information = Tweet.find_tweets(@twitter_search.id)
    @keyword_value_hash = Parser.keyword_values
  end

  def destroy
    @twitter_search.destroy
    render json: @twitter_search
  end

  private

  def twitter_search_params
    params.require(:twitter_search).permit(:search_query, :description, :language_code, :tweet_count, :result_type)
  end

  def find_twitter_search
    @twitter_search = TwitterSearch.find(params[:id])
  end

  def find_group
    @group = Group.find(params[:group_id])
  end

  def find_or_create_sentiment
    @twitter_search.parse_tweets
  end
end
