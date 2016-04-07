class CreateDocumentKeywords < ActiveRecord::Migration
  def change
    create_table :document_keywords do |t|
      t.integer :document_id
      t.integer :keyword_id

      t.timestamps null: false
    end
  end
end
