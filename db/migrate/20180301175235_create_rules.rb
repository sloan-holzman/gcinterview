class CreateRules < ActiveRecord::Migration[5.1]
  def change
    create_table :matching_rules do |t|
      t.float :ratio
      t.datetime :start_date
      t.datetime :end_date
      t.references :campaign, foreign_key: true
      t.timestamps
    end
  end
end
