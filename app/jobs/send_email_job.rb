class SendEmailJob < ActiveJob::Base
  queue_as :default

  def self.perform(email_params)
    MailForward.build_email(email_params).deliver_now
    p 'finished sending email'
  end
end
