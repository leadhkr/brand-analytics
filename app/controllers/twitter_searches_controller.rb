# == Schema Information
#
# Table name: twitter_searches
#
#  id           :integer          not null, primary key
#  search_query :string
#  description  :text
#  group_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TwitterSearchesController < ApplicationController
  before_action :find_twitter_search, only: [:show]
  before_action :find_group, only: [:show]

  def show
    @tweets = parse_tweets
    binding.pry
  end



  private

  def find_twitter_search
    @twitter_search = TwitterSearch.find(params[:id])
  end

  def find_group
    @group = Group.find(params[:group_id])
  end

end
