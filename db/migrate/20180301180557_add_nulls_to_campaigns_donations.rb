class AddNullsToCampaignsDonations < ActiveRecord::Migration[5.1]
  def change
    change_column :campaigns, :amount, :integer, :default => 0
    change_column :donations, :amount, :integer, :default => 0
  end
end
