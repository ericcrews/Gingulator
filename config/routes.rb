Rails.application.routes.draw do
  devise_for :users
  resources :app_infos
end
