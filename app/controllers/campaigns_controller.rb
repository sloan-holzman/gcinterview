class CampaignsController < ApplicationController

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @matching_rules = @campaign.matching_rules
    @donations = @campaign.donations
  end


end
