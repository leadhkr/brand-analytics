class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.float :rating

      t.timestamps null: false
    end
  end
end
