class AddTitleToDocuments < ActiveRecord::Migration
  def up
    add_column :documents, :title, :string
  end

  def down
    remove_column :documents, :title
  end
end
