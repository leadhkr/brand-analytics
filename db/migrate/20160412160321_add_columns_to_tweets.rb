class AddColumnsToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :profile_image_url, :string
    add_column :tweets, :name, :string
    add_column :tweets, :location, :string
  end
end
