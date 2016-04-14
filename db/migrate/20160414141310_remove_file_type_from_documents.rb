class RemoveFileTypeFromDocuments < ActiveRecord::Migration
  def change
    remove_column :documents, :file_type
  end
end
