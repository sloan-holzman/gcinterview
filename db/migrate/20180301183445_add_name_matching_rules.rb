class AddNameMatchingRules < ActiveRecord::Migration[5.1]
  def change
    add_column :matching_rules, :donor, :string, :default => 'Anonymous'
  end
end
