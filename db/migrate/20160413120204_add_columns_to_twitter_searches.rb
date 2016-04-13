class AddColumnsToTwitterSearches < ActiveRecord::Migration
  def change
    add_column :twitter_searches, :result_type, :string
    add_column :twitter_searches, :tweet_count, :integer
    add_column :twitter_searches, :language_code, :string
  end
end
