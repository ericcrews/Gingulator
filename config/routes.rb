Rails.application.routes.draw do
  resources :app_infos
  #root 'app_infos#index'
  post '/' => 'app_infos#data'
  post 'listeners/slack'
  post 'listeners/twilio'
end
