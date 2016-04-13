class TwitterSearchesController < ApplicationController
  before_action :find_twitter_search, only: [:show]
  before_action :find_group, only: [:show, :create]

  def new
    @twitter_search = TwitterSearch.new
  end

  def create
    query = params[:twitter_search][:search_query]
    language = params[:twitter_search][:language_code]
    result_type = params[:twitter_search][:result_type]
    tweet_count = params[:twitter_search][:tweet_count].to_i

    @twitter_search = TwitterSearch.new(twitter_search_params)
    @twitter_search.group = @group
    tweets = TweetService.query_to_tweets(query, language, result_type, tweet_count)
    tweet_objs = TweetService.create_tweets(tweets)
    @twitter_search.tweets << tweet_objs

    if @twitter_search.save
      redirect_to group_twitter_search_path(@group, @twitter_search)
    else
      redirect_to group_path(@group)
    end
  end

  def show
    find_or_create_sentiment

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
