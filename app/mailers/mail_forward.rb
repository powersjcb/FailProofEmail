class MailForward < ApplicationMailer
  default from: 'no-reply@example.com',
          return_path: 'system@example.com'

  def build_email(email_params)
    mail(email_params)
  end
end
