class AddZipCodeToGroups < ActiveRecord::Migration
  def up
    add_column :groups, :zip_code, :integer
  end

  def down
    remove_column :groups, :zip_code
  end
end
