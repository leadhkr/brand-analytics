class TweetsController < ApplicationController
  def create
    query = params[:search_parameter]
    language = params[:language_code][:id]
    tweet_count = params[:tweet_count].to_i
    result_type = params[:result_type]

    @group = Group.find(params[:group_id])
    @document = Document.new(title: query, group: @group)
    tweets = TweetService.sanitize_tweets(query, language, result_type, tweet_count)
    tweets_string = Tweet.stringify_tweets(tweets)
    @document.tweets += tweets
    @document.text = tweets_string

    if @document.save
      redirect_to group_document_path(@group.id, @document.id)
    else
      flash.now[:error] = "Please try again."
      redirect_to group_path(@group)
    end
  end
end
