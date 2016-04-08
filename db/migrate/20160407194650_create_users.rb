class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :business_account
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
