class DonationsController < ApplicationController

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @donation = @campaign.donations.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @donation = @campaign.donations.create!(donation_params)
    matching_rules = @campaign.matching_rules.where("start_date <= ? and end_date >= ?", @donation.date, @donation.date)
    new_amount = @campaign.amount+@donation.amount
    matching_rules.each do |rule|
      if rule.type_match == 'ratio'
        match_amount = [rule.cap - rule.total, @donation.amount*rule.ratio].min
      else
        match_amount = [rule.cap - rule.total, rule.fixed_per_donation].min        
      end
      new_total = rule.total+match_amount
      rule.update(total: new_total)
      new_amount += match_amount
    end
    @campaign.update(amount: new_amount)
    redirect_to campaign_path(@campaign)
  end



  def donation_params
    params.require(:donation).permit(:amount, :date, :name, :email)
  end

end
