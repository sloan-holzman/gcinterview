class Campaign < ApplicationRecord
  has_many :donations, dependent: :destroy
  has_many :matching_rules, dependent: :destroy
  validates :school, :amount, {presence: true}
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
