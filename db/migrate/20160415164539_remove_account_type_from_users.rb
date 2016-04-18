class RemoveAccountTypeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :business_account
  end
end
