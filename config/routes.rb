Rails.application.routes.draw do
  post 'forward', to: 'mailings#forward_email'
end
