class AddDomainToGroups < ActiveRecord::Migration
  def up
    add_column :groups, :domain, :string
  end

  def down
    remove_column :groups, :domain
  end
end
