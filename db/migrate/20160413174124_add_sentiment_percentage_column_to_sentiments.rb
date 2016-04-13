class AddSentimentPercentageColumnToSentiments < ActiveRecord::Migration
  def change
    add_column :sentiments, :sentiment_percentage, :integer
  end
end
