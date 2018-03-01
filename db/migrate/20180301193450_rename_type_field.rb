class RenameTypeField < ActiveRecord::Migration[5.1]
  def change
    rename_column :matching_rules, :type, :type_match
  end
end
