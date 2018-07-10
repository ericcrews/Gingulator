Rails.application.routes.draw do
  devise_for :users
  resources :app_infos 
  root to: 'app_infos#index'
end
