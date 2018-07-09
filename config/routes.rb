Rails.application.routes.draw do
  devise_for :users
  resources :app_infos
  post 'authenticate', to: 'authentication#authenticate'
end
