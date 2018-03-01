class MatchingRule < ApplicationRecord
  belongs_to :campaign
  validates :ratio, :campaign_id, {presence: true}
  validates :ratio, numericality: { greater_than_or_equal_to: 0 }
end
