Rails.application.routes.draw do
  post 'listeners/slack'
  post 'listeners/twilio'
end
