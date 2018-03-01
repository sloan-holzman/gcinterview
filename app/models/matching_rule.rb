class MatchingRule < ApplicationRecord
  belongs_to :campaign
  validates :campaign_id, :start_date, :end_date, :type_match, {presence: true}
  validates :ratio, numericality: { greater_than_or_equal_to: 0 }
  validates :fixed_per_donation, numericality: { greater_than_or_equal_to: 0 }
end
