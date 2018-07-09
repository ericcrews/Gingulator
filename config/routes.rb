Rails.application.routes.draw do
  resources :app_infos
  post 'authenticate', to: 'authentication#authenticate'
end
