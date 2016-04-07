class CreateKeywordValues < ActiveRecord::Migration
  def change
    create_table :keyword_values do |t|
      t.integer :keyword_id
      t.integer :value_id

      t.timestamps null: false
    end
  end
end
