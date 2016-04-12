class AddTwitterSearchToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :twitter_search_id, :integer
  end
end
