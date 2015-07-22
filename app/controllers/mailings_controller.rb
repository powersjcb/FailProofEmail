class MailingsController < ApplicationController

  def forward_email
    e = email_params
    unless e[:to] && e[:body] && e[:subject]
      render json: {errors: ["Invalid email params"]}, status: 422
    else
      SendEmailJob.perform(email_params)
      render json: {success: "Email queued to be sent"}
    end

  end

  private

  def email_params
    params.require(:email).permit(:to, :body, :subject)
  end

end
