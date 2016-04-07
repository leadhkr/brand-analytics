class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.text :text
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
