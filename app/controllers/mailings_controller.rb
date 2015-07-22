class MailingsController < ApplicationController

  def forward_email


  end

  private

  def email_params
    params.require(:email).permit(:to, :body, :subject)
  end

end
