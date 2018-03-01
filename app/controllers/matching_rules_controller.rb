class MatchingRulesController < ApplicationController

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @matching_rule = @campaign.matching_rules.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @matching_rule = @campaign.matching_rules.create!(matching_params)
    redirect_to campaign_path(@campaign)
  end



  def matching_params
    params.require(:matching_rule).permit(:ratio, :start_date, :end_date, :donor, :cap, :type_match, :fixed_per_donation)
  end

end
