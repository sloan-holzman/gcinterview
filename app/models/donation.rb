class Donation < ApplicationRecord
  belongs_to :campaign
  validates :amount, :date, :campaign_id, :name, :email, {presence: true}
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
