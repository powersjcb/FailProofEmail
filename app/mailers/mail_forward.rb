class MailForward < ApplicationMailer
  default from: 'no-reply@example.com'
          return_path: 'system@example.com'

  def send(to, body, subject)
    mail(to: to, body: body, subject: subject)
    # delivery_method_options
  end
end
