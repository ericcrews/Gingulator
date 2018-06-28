Rails.application.routes.draw do
  resources :app_infos
  post 'listeners/slack'
  post 'listeners/twilio'
end
