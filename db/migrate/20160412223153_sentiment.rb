class Sentiment < ActiveRecord::Migration
  def change

    create_table :sentiments do |t|
      t.integer :sentiment_score
      t.integer :polarity_score
      t.integer :record_id
      t.string :record_type

      t.timestamps null: false
    end    
  end
end
