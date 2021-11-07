class CampaignJob < ApplicationJob
  queue_as :emails

  def perform(client, title, body)
    MarketingMailer.campaign(client, title, body).delivery_now
  end
end
