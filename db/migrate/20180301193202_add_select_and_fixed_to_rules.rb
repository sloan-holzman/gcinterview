class AddSelectAndFixedToRules < ActiveRecord::Migration[5.1]
  def change
    add_column :matching_rules, :type, :string
    add_column :matching_rules, :fixed_per_donation, :integer
  end
end
