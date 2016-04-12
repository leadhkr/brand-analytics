class CreateTwitterSearch < ActiveRecord::Migration
  def change
    create_table :twitter_searches do |t|
      t.string :search_query
      t.text :description
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
