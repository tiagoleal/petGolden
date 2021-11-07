class MarketingMailer < ApplicationMailer

  def campaign(client, title, body)
    @body = body

    mail to: Client.email, subject: title
  end
end
