class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.datetime :date
      t.references :campaign, foreign_key: true
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
