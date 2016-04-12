class AddDocumentIdToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :document_id, :integer
  end
end
