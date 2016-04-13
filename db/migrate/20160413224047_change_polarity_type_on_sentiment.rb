class ChangePolarityTypeOnSentiment < ActiveRecord::Migration
  def change
    change_column :sentiments, :polarity_score, :integer    
  end
end
