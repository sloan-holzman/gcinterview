class AddCapTrackToRules < ActiveRecord::Migration[5.1]
  def change
    add_column :matching_rules, :cap, :integer
    add_column :matching_rules, :total, :integer, :default => 0
  end
end
