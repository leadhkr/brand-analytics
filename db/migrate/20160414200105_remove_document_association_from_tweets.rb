class RemoveDocumentAssociationFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :document_id
  end
end
