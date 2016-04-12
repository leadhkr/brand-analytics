class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :text
      t.integer :favorite_count
      t.integer :retweets
      t.date :tweet_date
      t.string :user_verified
      
      t.timestamps null: false
    end
  end
end
