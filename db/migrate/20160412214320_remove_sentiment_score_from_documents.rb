class RemoveSentimentScoreFromDocuments < ActiveRecord::Migration
  def change
    remove_column :documents, :sentiment_score, :integer
  end
end
