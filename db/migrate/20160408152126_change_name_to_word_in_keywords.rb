class ChangeNameToWordInKeywords < ActiveRecord::Migration
  def up
    rename_column :keywords, :name, :word
  end

  def down
    rename_column :keywords, :word, :name
  end
end
