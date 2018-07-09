Rails.application.routes.draw do
  resources :items
  resources :app_infos
  post 'authenticate', to: 'authentication#authenticate'
end
